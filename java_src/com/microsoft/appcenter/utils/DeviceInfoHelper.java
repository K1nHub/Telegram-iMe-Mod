package com.microsoft.appcenter.utils;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import com.microsoft.appcenter.ingestion.models.Device;
import com.microsoft.appcenter.ingestion.models.WrapperSdk;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes4.dex */
public class DeviceInfoHelper {
    private static String mCountryCode;
    private static WrapperSdk sWrapperSdk;

    public static PackageInfo getPackageInfo(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (Exception e) {
            AppCenterLog.error("AppCenter", "Cannot retrieve package info", e);
            return null;
        }
    }

    public static synchronized Device getDeviceInfo(Context context) throws DeviceInfoException {
        Device device;
        synchronized (DeviceInfoHelper.class) {
            device = new Device();
            PackageInfo packageInfo = getPackageInfo(context);
            if (packageInfo == null) {
                throw new DeviceInfoException("Cannot retrieve package info");
            }
            device.setAppVersion(packageInfo.versionName);
            device.setAppBuild(String.valueOf(getVersionCode(packageInfo)));
            device.setAppNamespace(context.getPackageName());
            try {
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                String networkCountryIso = telephonyManager.getNetworkCountryIso();
                if (!TextUtils.isEmpty(networkCountryIso)) {
                    device.setCarrierCountry(networkCountryIso);
                }
                String networkOperatorName = telephonyManager.getNetworkOperatorName();
                if (!TextUtils.isEmpty(networkOperatorName)) {
                    device.setCarrierName(networkOperatorName);
                }
            } catch (Exception e) {
                AppCenterLog.error("AppCenter", "Cannot retrieve carrier info", e);
            }
            String str = mCountryCode;
            if (str != null) {
                device.setCarrierCountry(str);
            }
            device.setLocale(Locale.getDefault().toString());
            device.setModel(Build.MODEL);
            device.setOemName(Build.MANUFACTURER);
            device.setOsApiLevel(Integer.valueOf(Build.VERSION.SDK_INT));
            device.setOsName("Android");
            device.setOsVersion(Build.VERSION.RELEASE);
            device.setOsBuild(Build.ID);
            try {
                device.setScreenSize(getScreenSize(context));
            } catch (Exception e2) {
                AppCenterLog.error("AppCenter", "Cannot retrieve screen size", e2);
            }
            device.setSdkName("appcenter.android");
            device.setSdkVersion("5.0.1");
            device.setTimeZoneOffset(Integer.valueOf((TimeZone.getDefault().getOffset(System.currentTimeMillis()) / 60) / 1000));
            WrapperSdk wrapperSdk = sWrapperSdk;
            if (wrapperSdk != null) {
                device.setWrapperSdkVersion(wrapperSdk.getWrapperSdkVersion());
                device.setWrapperSdkName(sWrapperSdk.getWrapperSdkName());
                device.setWrapperRuntimeVersion(sWrapperSdk.getWrapperRuntimeVersion());
                device.setLiveUpdateReleaseLabel(sWrapperSdk.getLiveUpdateReleaseLabel());
                device.setLiveUpdateDeploymentKey(sWrapperSdk.getLiveUpdateDeploymentKey());
                device.setLiveUpdatePackageHash(sWrapperSdk.getLiveUpdatePackageHash());
            }
        }
        return device;
    }

    public static int getVersionCode(PackageInfo packageInfo) {
        return packageInfo.versionCode;
    }

    private static String getScreenSize(Context context) {
        int i;
        int i2;
        Point point = new Point();
        Display display = ((DisplayManager) context.getSystemService("display")).getDisplay(0);
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        point.x = displayMetrics.widthPixels;
        point.y = displayMetrics.heightPixels;
        int rotation = display.getRotation();
        if (rotation == 1 || rotation == 3) {
            int i3 = point.x;
            int i4 = point.y;
            i = i3;
            i2 = i4;
        } else {
            i2 = point.x;
            i = point.y;
        }
        return i2 + "x" + i;
    }

    /* loaded from: classes4.dex */
    public static class DeviceInfoException extends Exception {
        public DeviceInfoException(String detailMessage) {
            super(detailMessage);
        }
    }
}
