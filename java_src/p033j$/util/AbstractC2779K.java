package p033j$.util;

import java.security.AccessController;
/* renamed from: j$.util.K */
/* loaded from: classes2.dex */
abstract class AbstractC2779K {

    /* renamed from: a */
    static final boolean f649a = ((Boolean) AccessController.doPrivileged(C2778J.f648a)).booleanValue();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m612a(Class cls, String str) {
        throw new UnsupportedOperationException(cls + " tripwire tripped but logging not supported: " + str);
    }
}
