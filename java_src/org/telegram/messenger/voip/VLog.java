package org.telegram.messenger.voip;

import android.text.TextUtils;
import java.io.PrintWriter;
import java.io.StringWriter;
/* loaded from: classes4.dex */
class VLog {
    /* renamed from: d */
    public static native void m41d(String str);

    /* renamed from: e */
    public static native void m40e(String str);

    /* renamed from: i */
    public static native void m37i(String str);

    /* renamed from: v */
    public static native void m36v(String str);

    /* renamed from: w */
    public static native void m35w(String str);

    VLog() {
    }

    /* renamed from: e */
    public static void m38e(Throwable th) {
        m39e(null, th);
    }

    /* renamed from: e */
    public static void m39e(String str, Throwable th) {
        StringWriter stringWriter = new StringWriter();
        if (!TextUtils.isEmpty(str)) {
            stringWriter.append((CharSequence) str);
            stringWriter.append((CharSequence) ": ");
        }
        th.printStackTrace(new PrintWriter(stringWriter));
        String[] split = stringWriter.toString().split("\n");
        for (String str2 : split) {
            m40e(str2);
        }
    }
}
