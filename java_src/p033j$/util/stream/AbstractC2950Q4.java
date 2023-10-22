package p033j$.util.stream;

import java.security.AccessController;
import java.security.PrivilegedAction;
/* renamed from: j$.util.stream.Q4 */
/* loaded from: classes2.dex */
abstract class AbstractC2950Q4 {

    /* renamed from: a */
    static final boolean f963a = ((Boolean) AccessController.doPrivileged(new PrivilegedAction() { // from class: j$.util.stream.P4
        @Override // java.security.PrivilegedAction
        public final Object run() {
            boolean z = AbstractC2950Q4.f963a;
            return Boolean.valueOf(Boolean.getBoolean("org.openjdk.java.util.stream.tripwire"));
        }
    })).booleanValue();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m545a(Class cls, String str) {
        throw new UnsupportedOperationException(cls + " tripwire tripped but logging not supported: " + str);
    }
}
