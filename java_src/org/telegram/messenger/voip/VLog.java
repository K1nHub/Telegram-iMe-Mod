package org.telegram.messenger.voip;

import android.text.TextUtils;
import java.io.PrintWriter;
import java.io.StringWriter;
/* loaded from: classes4.dex */
class VLog {
    /* renamed from: d */
    public static native void m76d(String str);

    /* renamed from: e */
    public static native void m75e(String str);

    /* renamed from: i */
    public static native void m72i(String str);

    /* renamed from: v */
    public static native void m71v(String str);

    /* renamed from: w */
    public static native void m70w(String str);

    VLog() {
    }

    /* renamed from: e */
    public static void m73e(Throwable th) {
        m74e(null, th);
    }

    /* renamed from: e */
    public static void m74e(String str, Throwable th) {
        StringWriter stringWriter = new StringWriter();
        if (!TextUtils.isEmpty(str)) {
            stringWriter.append((CharSequence) str);
            stringWriter.append((CharSequence) ": ");
        }
        th.printStackTrace(new PrintWriter(stringWriter));
        String[] split = stringWriter.toString().split("\n");
        for (String str2 : split) {
            m75e(str2);
        }
    }
}
