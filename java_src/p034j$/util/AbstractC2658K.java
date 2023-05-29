package p034j$.util;

import java.security.AccessController;
/* renamed from: j$.util.K */
/* loaded from: classes2.dex */
abstract class AbstractC2658K {

    /* renamed from: a */
    static final boolean f567a = ((Boolean) AccessController.doPrivileged(C2657J.f566a)).booleanValue();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m612a(Class cls, String str) {
        throw new UnsupportedOperationException(cls + " tripwire tripped but logging not supported: " + str);
    }
}
