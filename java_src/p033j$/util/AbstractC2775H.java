package p033j$.util;

import java.security.AccessController;
import java.security.PrivilegedAction;
/* renamed from: j$.util.H */
/* loaded from: classes2.dex */
abstract class AbstractC2775H {

    /* renamed from: a */
    static final boolean f696a = ((Boolean) AccessController.doPrivileged(new PrivilegedAction() { // from class: j$.util.G
        @Override // java.security.PrivilegedAction
        public final Object run() {
            boolean z = AbstractC2775H.f696a;
            return Boolean.valueOf(Boolean.getBoolean("org.openjdk.java.util.stream.tripwire"));
        }
    })).booleanValue();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m672a(Class cls, String str) {
        throw new UnsupportedOperationException(cls + " tripwire tripped but logging not supported: " + str);
    }
}
