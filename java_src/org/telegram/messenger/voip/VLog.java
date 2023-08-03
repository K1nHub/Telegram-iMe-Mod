package org.telegram.messenger.voip;

import android.text.TextUtils;
import java.io.PrintWriter;
import java.io.StringWriter;
/* loaded from: classes4.dex */
class VLog {
    /* renamed from: d */
    public static native void m47d(String str);

    /* renamed from: e */
    public static native void m46e(String str);

    /* renamed from: i */
    public static native void m43i(String str);

    /* renamed from: v */
    public static native void m42v(String str);

    /* renamed from: w */
    public static native void m41w(String str);

    VLog() {
    }

    /* renamed from: e */
    public static void m44e(Throwable th) {
        m45e(null, th);
    }

    /* renamed from: e */
    public static void m45e(String str, Throwable th) {
        StringWriter stringWriter = new StringWriter();
        if (!TextUtils.isEmpty(str)) {
            stringWriter.append((CharSequence) str);
            stringWriter.append((CharSequence) ": ");
        }
        th.printStackTrace(new PrintWriter(stringWriter));
        String[] split = stringWriter.toString().split("\n");
        for (String str2 : split) {
            m46e(str2);
        }
    }
}
