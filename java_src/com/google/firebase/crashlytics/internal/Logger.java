package com.google.firebase.crashlytics.internal;

import android.util.Log;
/* loaded from: classes3.dex */
public class Logger {
    static final Logger DEFAULT_LOGGER = new Logger("FirebaseCrashlytics");
    private int logLevel = 4;
    private final String tag;

    public Logger(String str) {
        this.tag = str;
    }

    public static Logger getLogger() {
        return DEFAULT_LOGGER;
    }

    private boolean canLog(int i) {
        return this.logLevel <= i || Log.isLoggable(this.tag, i);
    }

    /* renamed from: d */
    public void m1040d(String str, Throwable th) {
        if (canLog(3)) {
            Log.d(this.tag, str, th);
        }
    }

    /* renamed from: v */
    public void m1034v(String str, Throwable th) {
        if (canLog(2)) {
            Log.v(this.tag, str, th);
        }
    }

    /* renamed from: i */
    public void m1036i(String str, Throwable th) {
        if (canLog(4)) {
            Log.i(this.tag, str, th);
        }
    }

    /* renamed from: w */
    public void m1032w(String str, Throwable th) {
        if (canLog(5)) {
            Log.w(this.tag, str, th);
        }
    }

    /* renamed from: e */
    public void m1038e(String str, Throwable th) {
        if (canLog(6)) {
            Log.e(this.tag, str, th);
        }
    }

    /* renamed from: d */
    public void m1041d(String str) {
        m1040d(str, null);
    }

    /* renamed from: v */
    public void m1035v(String str) {
        m1034v(str, null);
    }

    /* renamed from: i */
    public void m1037i(String str) {
        m1036i(str, null);
    }

    /* renamed from: w */
    public void m1033w(String str) {
        m1032w(str, null);
    }

    /* renamed from: e */
    public void m1039e(String str) {
        m1038e(str, null);
    }
}
