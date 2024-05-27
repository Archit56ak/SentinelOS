//TCP enable & Disable
import 'dart:ffi' as dart_ffi;
import 'dart:io';

import 'package:path/path.dart' as p;

typedef RunTCPenableFunc = dart_ffi.Void Function();
typedef RunTCPenableScript = void Function();

typedef RunTCPdisableFunc = dart_ffi.Void Function();
typedef RunTCPdisableScript = void Function();



//TCP 
void TCPenablescript() {
  var libraryPath = p.join(Directory.current.path, "ffi_lib", "mylib.dll");
  final dynamicLib = dart_ffi.DynamicLibrary.open(libraryPath);
  final RunTCPenableScript runTCPenableScript = dynamicLib
      .lookup<dart_ffi.NativeFunction<RunTCPenableFunc>>("TCPenable")
      .asFunction();
  runTCPenableScript();
  // print(libraryPath);
}

void TCPdisablescript() {
  var libraryPath = p.join(Directory.current.path, "ffi_lib", "mylib.dll");
  final dynamicLib = dart_ffi.DynamicLibrary.open(libraryPath);
  final RunTCPdisableScript runTCPdisableScript = dynamicLib
      .lookup<dart_ffi.NativeFunction<RunTCPdisableFunc>>("TCPdisable")
      .asFunction();
  runTCPdisableScript();
  // print(libraryPath);
}

//IP forwarding enable & Disable
typedef RunIPenableFunc = dart_ffi.Void Function();
typedef RunIPenableScript = void Function();

typedef RunIPdisableFunc = dart_ffi.Void Function();
typedef RunIPdisableScript = void Function();

//IP forwarding
void IPenablescript() {
  var libraryPath = p.join(Directory.current.path, "ffi_lib", "mylib.dll");
  final dynamicLib = dart_ffi.DynamicLibrary.open(libraryPath);
  final RunIPenableScript runIPenableScript = dynamicLib
      .lookup<dart_ffi.NativeFunction<RunIPenableFunc>>("IPenable")
      .asFunction();
  runIPenableScript();
  // print(libraryPath);
}

void IPdisablescript() {
  var libraryPath = p.join(Directory.current.path, "ffi_lib", "mylib.dll");
  final dynamicLib = dart_ffi.DynamicLibrary.open(libraryPath);
  final RunIPdisableScript runIPdisableScript = dynamicLib
      .lookup<dart_ffi.NativeFunction<RunIPdisableFunc>>("IPdisable")
      .asFunction();
  runIPdisableScript();
  // print(libraryPath);
}

//Install UFW
typedef RunUFWFunc = dart_ffi.Void Function();
typedef RunUFWScript = void Function();

void ufwscript() {
  var libraryPath = p.join(Directory.current.path, "ffi_lib", "mylib.dll");
  final dynamicLib = dart_ffi.DynamicLibrary.open(libraryPath);
  final RunUFWScript runUFWScript = dynamicLib
      .lookup<dart_ffi.NativeFunction<RunUFWFunc>>("Installufw")
      .asFunction();
  runUFWScript();
  // print(libraryPath);
}

//Install auditd
typedef RunADFunc = dart_ffi.Void Function();
typedef RunADScript = void Function();

void auditdscript() {
  var libraryPath = p.join(Directory.current.path, "ffi_lib", "mylib.dll");
  final dynamicLib = dart_ffi.DynamicLibrary.open(libraryPath);
  final RunADScript runADScript = dynamicLib
      .lookup<dart_ffi.NativeFunction<RunADFunc>>("Installauditd")
      .asFunction();
  runADScript();
  // print(libraryPath);
}