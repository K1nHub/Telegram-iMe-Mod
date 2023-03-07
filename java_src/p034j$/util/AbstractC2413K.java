package p034j$.util;

import java.security.AccessController;
/* renamed from: j$.util.K */
/* loaded from: classes2.dex */
abstract class AbstractC2413K {

    /* renamed from: a */
    static final boolean f558a = ((Boolean) AccessController.doPrivileged(C2412J.f557a)).booleanValue();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m628a(Class cls, String str) {
        throw new UnsupportedOperationException(cls + " tripwire tripped but logging not supported: " + str);
    }
}
