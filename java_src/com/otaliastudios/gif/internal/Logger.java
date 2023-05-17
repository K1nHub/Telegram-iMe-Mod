package com.otaliastudios.gif.internal;

import android.util.Log;
/* loaded from: classes4.dex */
public class Logger {
    private static int sLevel;
    private String mTag;

    public Logger(String str) {
        this.mTag = str;
    }

    private boolean should(int i) {
        return sLevel <= i;
    }

    /* renamed from: v */
    public void m689v(String str) {
        m688v(str, null);
    }

    /* renamed from: i */
    public void m691i(String str) {
        m690i(str, null);
    }

    /* renamed from: v */
    public void m688v(String str, Throwable th) {
        log(0, str, th);
    }

    /* renamed from: i */
    public void m690i(String str, Throwable th) {
        log(1, str, th);
    }

    /* renamed from: w */
    public void m687w(String str, Throwable th) {
        log(2, str, th);
    }

    /* renamed from: e */
    public void m692e(String str, Throwable th) {
        log(3, str, th);
    }

    private void log(int i, String str, Throwable th) {
        if (should(i)) {
            if (i == 0) {
                Log.v(this.mTag, str, th);
            } else if (i == 1) {
                Log.i(this.mTag, str, th);
            } else if (i == 2) {
                Log.w(this.mTag, str, th);
            } else if (i != 3) {
            } else {
                Log.e(this.mTag, str, th);
            }
        }
    }
}
