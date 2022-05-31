# my_documents_flutter

A new Flutter project.

## Comments Line: 
- Generate keystore :
```
$keytool -genkey -v -keystore ~/[name].jks -keyalg RSA -keysize 2048 -validity 10000 -alias [key alias name]
```

- Get keystore password, alias password: (Using https://1password.com/password-generator/)

- Sign App:
```
$jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore [path_file_keystore] -signedjar [path_export_file_aab] [path_import_file_aab] [alias_name]
```

- Export Cert:
```
$keytool -exportcert -keystore [path_file_keystore] -alias [alias_name] -file [name_file_export.cert]
```

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

- Define branch:
+ future-[#idClickUp]/[description]		:
+ fixbug-[#idClickUp]/[description]		:
+ hotfix-[#idClickUp]/[description]		:
+ CR-[#idClickUp]/[description] 			: Change request

