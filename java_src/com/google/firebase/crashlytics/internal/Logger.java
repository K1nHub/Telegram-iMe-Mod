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
    public void m737d(String str, Throwable th) {
        if (canLog(3)) {
            Log.d(this.tag, str, th);
        }
    }

    /* renamed from: v */
    public void m731v(String str, Throwable th) {
        if (canLog(2)) {
            Log.v(this.tag, str, th);
        }
    }

    /* renamed from: i */
    public void m733i(String str, Throwable th) {
        if (canLog(4)) {
            Log.i(this.tag, str, th);
        }
    }

    /* renamed from: w */
    public void m729w(String str, Throwable th) {
        if (canLog(5)) {
            Log.w(this.tag, str, th);
        }
    }

    /* renamed from: e */
    public void m735e(String str, Throwable th) {
        if (canLog(6)) {
            Log.e(this.tag, str, th);
        }
    }

    /* renamed from: d */
    public void m738d(String str) {
        m737d(str, null);
    }

    /* renamed from: v */
    public void m732v(String str) {
        m731v(str, null);
    }

    /* renamed from: i */
    public void m734i(String str) {
        m733i(str, null);
    }

    /* renamed from: w */
    public void m730w(String str) {
        m729w(str, null);
    }

    /* renamed from: e */
    public void m736e(String str) {
        m735e(str, null);
    }
}
