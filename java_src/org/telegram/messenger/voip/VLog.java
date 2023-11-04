package org.telegram.messenger.voip;

import android.text.TextUtils;
import java.io.PrintWriter;
import java.io.StringWriter;
/* loaded from: classes4.dex */
class VLog {
    /* renamed from: d */
    public static native void m77d(String str);

    /* renamed from: e */
    public static native void m76e(String str);

    /* renamed from: i */
    public static native void m73i(String str);

    /* renamed from: v */
    public static native void m72v(String str);

    /* renamed from: w */
    public static native void m71w(String str);

    VLog() {
    }

    /* renamed from: e */
    public static void m74e(Throwable th) {
        m75e(null, th);
    }

    /* renamed from: e */
    public static void m75e(String str, Throwable th) {
        StringWriter stringWriter = new StringWriter();
        if (!TextUtils.isEmpty(str)) {
            stringWriter.append((CharSequence) str);
            stringWriter.append((CharSequence) ": ");
        }
        th.printStackTrace(new PrintWriter(stringWriter));
        String[] split = stringWriter.toString().split("\n");
        for (String str2 : split) {
            m76e(str2);
        }
    }
}
