package com.otaliastudios.gif.internal;

import android.util.Log;
/* loaded from: classes6.dex */
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
    public void m707v(String str) {
        m706v(str, null);
    }

    /* renamed from: i */
    public void m709i(String str) {
        m708i(str, null);
    }

    /* renamed from: v */
    public void m706v(String str, Throwable th) {
        log(0, str, th);
    }

    /* renamed from: i */
    public void m708i(String str, Throwable th) {
        log(1, str, th);
    }

    /* renamed from: w */
    public void m705w(String str, Throwable th) {
        log(2, str, th);
    }

    /* renamed from: e */
    public void m710e(String str, Throwable th) {
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
