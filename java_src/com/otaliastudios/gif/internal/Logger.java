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
    public void m698v(String str) {
        m697v(str, null);
    }

    /* renamed from: i */
    public void m700i(String str) {
        m699i(str, null);
    }

    /* renamed from: v */
    public void m697v(String str, Throwable th) {
        log(0, str, th);
    }

    /* renamed from: i */
    public void m699i(String str, Throwable th) {
        log(1, str, th);
    }

    /* renamed from: w */
    public void m696w(String str, Throwable th) {
        log(2, str, th);
    }

    /* renamed from: e */
    public void m701e(String str, Throwable th) {
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
