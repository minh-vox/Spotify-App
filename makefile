ifeq ($(OS),Windows_NT)
    BUILD_CMD=.\build_and_run_app.bat
else
    BUILD_CMD=./build_and_run_app.sh
    PUB_SYNC=./sync_all_pub_versions.sh
endif

update_app_icon:
	dart run flutter_launcher_icons:main
update_app_splash:
	dart run flutter_native_splash:create
remove_app_splash:
	dart run flutter_native_splash:remove

gen_assets:
	flutter pub run build_runner build
