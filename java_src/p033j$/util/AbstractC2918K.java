package p033j$.util;

import java.security.AccessController;
import java.security.PrivilegedAction;
/* renamed from: j$.util.K */
/* loaded from: classes2.dex */
abstract class AbstractC2918K {

    /* renamed from: a */
    static final boolean f662a = ((Boolean) AccessController.doPrivileged(new PrivilegedAction() { // from class: j$.util.J
        @Override // java.security.PrivilegedAction
        public final Object run() {
            boolean z = AbstractC2918K.f662a;
            return Boolean.valueOf(Boolean.getBoolean("org.openjdk.java.util.stream.tripwire"));
        }
    })).booleanValue();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m630a(Class cls, String str) {
        throw new UnsupportedOperationException(cls + " tripwire tripped but logging not supported: " + str);
    }
}
