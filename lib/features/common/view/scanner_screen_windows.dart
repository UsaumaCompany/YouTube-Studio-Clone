// // ignore_for_file: empty_catches, depend_on_referenced_packages

// import 'dart:async';

// import 'package:audioplayers/audioplayers.dart';
// import 'package:camera_platform_interface/camera_platform_interface.dart';
// import 'package:camera_windows/camera_windows.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// // import 'package:flutter_barcode_sdk/dynamsoft_barcode.dart';
// // import 'package:flutter_barcode_sdk/flutter_barcode_sdk.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:hale_farm/assets/colors/colors.dart';
// import 'package:hale_farm/assets/themes/theme.dart';
// import 'package:hale_farm/features/cart/presentation/controllers/bloc/cart_bloc.dart';
// import 'package:hale_farm/features/common/controllers/show_pop_up/show_pop_up_bloc.dart';
// import 'package:hale_farm/features/goods/presentation/controllers/bloc/goods_bloc.dart';

// class ScannerScreenWindows extends StatefulWidget {
//   // final FlutterBarcodeSdk barcodeReader;

//   const ScannerScreenWindows({super.key});

//   @override
//   State<ScannerScreenWindows> createState() => _ScannerScreenWindowsState();
// }

// class _ScannerScreenWindowsState extends State<ScannerScreenWindows> {
//   // late FlutterBarcodeSdk _barcodeReader;
//   List<CameraDescription> _cameras = <CameraDescription>[];
//   final List<String> _cameraNames = [];
//   // BarcodeResult? _results;
//   Size? _previewSize;
//   int _cameraId = -1;
//   bool _initialized = false;
//   StreamSubscription<CameraErrorEvent>? _errorStreamSubscription;
//   StreamSubscription<CameraClosingEvent>? _cameraClosingStreamSubscription;
//   StreamSubscription<FrameAvailabledEvent>? _frameAvailableStreamSubscription;
//   bool _isScanAvailable = true;
//   final ResolutionPreset _resolutionPreset = ResolutionPreset.veryHigh;
//   bool isMuted = false;

//   @override
//   void initState() {
//     super.initState();
//     // _barcodeReader = widget.barcodeReader;
//     WidgetsFlutterBinding.ensureInitialized();
//     initCamera();
//   }

//   playSound(sound) async {
//     final player = AudioPlayer();
//     if (isMuted) {
//       Null;
//     } else {
//       await player.play(AssetSource(sound));
//       Future.delayed(const Duration(seconds: 1), () => Navigator.pop(context));
//     }
//   }

//   Future<void> initCamera() async {
//     try {
//       _cameras = await CameraPlatform.instance.availableCameras();
//       _cameraNames.clear();
//       for (CameraDescription description in _cameras) {
//         _cameraNames.add(description.name);
//       }
//     } on PlatformException {}

//     toggleCamera(0);
//   }

//   void _onCameraError(CameraErrorEvent event) {
//     if (mounted) {
//       _scaffoldMessengerKey.currentState?.showSnackBar(
//           SnackBar(content: Text('Error: ${event.description}')));

//       // Dispose camera on camera error as it can not be used anymore.
//       _disposeCurrentCamera();
//       initCamera();
//     }
//   }

//   final GlobalKey<ScaffoldMessengerState> _scaffoldMessengerKey =
//       GlobalKey<ScaffoldMessengerState>();

//   void _onCameraClosing(CameraClosingEvent event) {
//     if (mounted) {
//       _showInSnackBar('Camera is closing');
//     }
//   }

//   void _showInSnackBar(String message) {
//     _scaffoldMessengerKey.currentState?.showSnackBar(SnackBar(
//       content: Text(message),
//       duration: const Duration(seconds: 1),
//     ));
//   }

//   void _onFrameAvailable(FrameAvailabledEvent event) {
//     if (mounted) {
//       Map<String, dynamic> map = event.toJson();
//       final Uint8List? data = map['bytes'] as Uint8List?;
//       if (data != null) {
//         if (!_isScanAvailable) {
//           return;
//         }

//         _isScanAvailable = false;
//         // _barcodeReader
//         //     .decodeImageBuffer(
//         //   data,
//         //   _previewSize!.width.toInt(),
//         //   _previewSize!.height.toInt(),
//         //   _previewSize!.width.toInt() * 4,
//         //   ImagePixelFormat.IPF_ARGB_8888.index,
//         // )
//         //     .then((results) {
//         //   setState(() {
//         //     _results = results.first;
//         //   });
//         //   _disposeCurrentCamera();
//         //   playSound("notif.mp3");
//         //   context.read<GoodsBloc>().add(PrBarCode(
//         //         _results!.text,
//         //         onSucces: (resaul) {
//         //           context
//         //               .read<CartBloc>()
//         //               .add(CartAddMap(resaul, 0, isCart: true));
//         //           Navigator.pop(context);
//         //         },
//         //         onError: (value) {
//         //           context
//         //               .read<ShowPopUpBloc>()
//         //               .add(ShowPopUp(message: value, status: PopStatus.error));
//         //         },
//         //       ));
//           _isScanAvailable = true;
//         }).catchError((error) {
//           _isScanAvailable = true;
//         });
//       }
//     }
//   }

//   /// Initializes the camera on the device.
//   Future<void> toggleCamera(int index) async {
//     assert(!_initialized);

//     if (_cameras.isEmpty) {
//       return;
//     }

//     int cameraId = -1;
//     try {
//       final CameraDescription camera = _cameras[index];

//       cameraId = await CameraPlatform.instance.createCamera(
//         camera,
//         _resolutionPreset,
//       );

//       _errorStreamSubscription?.cancel();
//       _errorStreamSubscription = CameraPlatform.instance
//           .onCameraError(cameraId)
//           .listen(_onCameraError);

//       _cameraClosingStreamSubscription?.cancel();
//       _cameraClosingStreamSubscription = CameraPlatform.instance
//           .onCameraClosing(cameraId)
//           .listen(_onCameraClosing);

//       _frameAvailableStreamSubscription?.cancel();
//       _frameAvailableStreamSubscription =
//           (CameraPlatform.instance as CameraWindows)
//               .onFrameAvailable(cameraId)
//               .listen(_onFrameAvailable);

//       final Future<CameraInitializedEvent> initialized =
//           CameraPlatform.instance.onCameraInitialized(cameraId).first;

//       await CameraPlatform.instance.initializeCamera(
//         cameraId,
//       );

//       final CameraInitializedEvent event = await initialized;
//       _previewSize = Size(
//         event.previewWidth,
//         event.previewHeight,
//       );

//       if (mounted) {
//         setState(() {
//           _initialized = true;
//           _cameraId = cameraId;
//         });
//       }
//     } on CameraException {
//       try {
//         if (cameraId >= 0) {
//           await CameraPlatform.instance.dispose(cameraId);
//         }
//       } on CameraException catch (e) {
//         debugPrint('Failed to dispose camera: ${e.code}: ${e.description}');
//       }

//       // Reset state.
//       if (mounted) {
//         setState(() {
//           _initialized = false;
//           _cameraId = -1;
//           _previewSize = null;
//         });
//       }
//     }
//   }

//   Future<void> _disposeCurrentCamera() async {
//     if (_cameraId >= 0 && _initialized) {
//       try {
//         await CameraPlatform.instance.dispose(_cameraId);

//         if (mounted) {
//           setState(() {
//             _initialized = false;
//             _cameraId = -1;
//             _previewSize = null;
//           });
//         }
//       } on CameraException {}
//     }
//   }

//   Widget _buildPreview() {
//     return CameraPlatform.instance.buildPreview(_cameraId);
//   }

//   @override
//   void dispose() {
//     _disposeCurrentCamera();
//     _errorStreamSubscription?.cancel();
//     _errorStreamSubscription = null;
//     _cameraClosingStreamSubscription?.cancel();
//     _cameraClosingStreamSubscription = null;
//     _frameAvailableStreamSubscription?.cancel();
//     _frameAvailableStreamSubscription = null;
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       // override the pop action
//       onWillPop: () async {
//         return true;
//       },
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(8),
//         child: SizedBox(
//           width: MediaQuery.of(context).size.width * .48,
//           height: MediaQuery.of(context).size.height * .54,
//           child: Stack(
//             children: [
//               _cameraId < 0
//                   ? const Center(
//                       child: SizedBox(
//                         height: 28,
//                         width: 28,
//                         child: CircularProgressIndicator(),
//                       ),
//                     )
//                   : SizedBox(
//                       width: double.infinity,
//                       height: double.infinity,
//                       child: _buildPreview(),
//                     ),
//               Positioned(
//                 top: 0.0,
//                 right: 0.0,
//                 bottom: 0.0,
//                 left: 0.0,
//                 child: _results == null || _results!.text.isEmpty
//                     ? Container(
//                         color: Colors.black.withOpacity(0.1),
//                         child: const Center(
//                           child: Text(
//                             'No barcode detected',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 20.0,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       )
//                     : Center(
//                         child: Text(
//                           _results!.text,
//                           style: AppTheme.displaySmall.copyWith(color: white),
//                         ),
//                       ),
//                 // : createOverlay(_results!),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
