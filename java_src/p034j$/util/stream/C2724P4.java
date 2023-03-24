package p034j$.util.stream;

import java.security.PrivilegedAction;
/* renamed from: j$.util.stream.P4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2724P4 implements PrivilegedAction {

    /* renamed from: a */
    public static final /* synthetic */ C2724P4 f818a = new C2724P4();

    private /* synthetic */ C2724P4() {
    }

    @Override // java.security.PrivilegedAction
    public final Object run() {
        boolean z = AbstractC2730Q4.f825a;
        return Boolean.valueOf(Boolean.getBoolean("org.openjdk.java.util.stream.tripwire"));
    }
}
