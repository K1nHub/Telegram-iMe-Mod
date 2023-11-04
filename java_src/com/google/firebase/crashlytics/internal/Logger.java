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
    public void m1038d(String str, Throwable th) {
        if (canLog(3)) {
            Log.d(this.tag, str, th);
        }
    }

    /* renamed from: v */
    public void m1032v(String str, Throwable th) {
        if (canLog(2)) {
            Log.v(this.tag, str, th);
        }
    }

    /* renamed from: i */
    public void m1034i(String str, Throwable th) {
        if (canLog(4)) {
            Log.i(this.tag, str, th);
        }
    }

    /* renamed from: w */
    public void m1030w(String str, Throwable th) {
        if (canLog(5)) {
            Log.w(this.tag, str, th);
        }
    }

    /* renamed from: e */
    public void m1036e(String str, Throwable th) {
        if (canLog(6)) {
            Log.e(this.tag, str, th);
        }
    }

    /* renamed from: d */
    public void m1039d(String str) {
        m1038d(str, null);
    }

    /* renamed from: v */
    public void m1033v(String str) {
        m1032v(str, null);
    }

    /* renamed from: i */
    public void m1035i(String str) {
        m1034i(str, null);
    }

    /* renamed from: w */
    public void m1031w(String str) {
        m1030w(str, null);
    }

    /* renamed from: e */
    public void m1037e(String str) {
        m1036e(str, null);
    }
}
