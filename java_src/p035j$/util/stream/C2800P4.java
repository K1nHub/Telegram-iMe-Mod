package p035j$.util.stream;

import java.security.PrivilegedAction;
/* renamed from: j$.util.stream.P4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2800P4 implements PrivilegedAction {

    /* renamed from: a */
    public static final /* synthetic */ C2800P4 f823a = new C2800P4();

    private /* synthetic */ C2800P4() {
    }

    @Override // java.security.PrivilegedAction
    public final Object run() {
        boolean z = AbstractC2806Q4.f830a;
        return Boolean.valueOf(Boolean.getBoolean("org.openjdk.java.util.stream.tripwire"));
    }
}
