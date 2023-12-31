package com.microsoft.appcenter.utils.storage;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.Set;
/* loaded from: classes4.dex */
public class SharedPreferencesManager {
    private static Context sContext;
    private static SharedPreferences sSharedPreferences;

    public static synchronized void initialize(Context context) {
        synchronized (SharedPreferencesManager.class) {
            if (sContext == null) {
                sContext = context;
                sSharedPreferences = context.getSharedPreferences("AppCenter", 0);
            }
        }
    }

    public static boolean getBoolean(String key, boolean defValue) {
        return sSharedPreferences.getBoolean(key, defValue);
    }

    public static void putBoolean(String key, boolean value) {
        SharedPreferences.Editor edit = sSharedPreferences.edit();
        edit.putBoolean(key, value);
        edit.apply();
    }

    public static int getInt(String key) {
        return getInt(key, 0);
    }

    public static int getInt(String key, int defValue) {
        return sSharedPreferences.getInt(key, defValue);
    }

    public static void putInt(String key, int value) {
        SharedPreferences.Editor edit = sSharedPreferences.edit();
        edit.putInt(key, value);
        edit.apply();
    }

    public static long getLong(String key) {
        return getLong(key, 0L);
    }

    public static long getLong(String key, long defValue) {
        return sSharedPreferences.getLong(key, defValue);
    }

    public static void putLong(String key, long value) {
        SharedPreferences.Editor edit = sSharedPreferences.edit();
        edit.putLong(key, value);
        edit.apply();
    }

    public static String getString(String key) {
        return getString(key, null);
    }

    public static String getString(String key, String defValue) {
        return sSharedPreferences.getString(key, defValue);
    }

    public static void putString(String key, String value) {
        SharedPreferences.Editor edit = sSharedPreferences.edit();
        edit.putString(key, value);
        edit.apply();
    }

    public static Set<String> getStringSet(String key) {
        return getStringSet(key, null);
    }

    public static Set<String> getStringSet(String key, Set<String> defValue) {
        return sSharedPreferences.getStringSet(key, defValue);
    }

    public static void putStringSet(String key, Set<String> value) {
        SharedPreferences.Editor edit = sSharedPreferences.edit();
        edit.putStringSet(key, value);
        edit.apply();
    }

    public static void remove(String key) {
        SharedPreferences.Editor edit = sSharedPreferences.edit();
        edit.remove(key);
        edit.apply();
    }
}
