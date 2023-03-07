package p034j$.util.stream;

import java.security.PrivilegedAction;
/* renamed from: j$.util.stream.P4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2586P4 implements PrivilegedAction {

    /* renamed from: a */
    public static final /* synthetic */ C2586P4 f812a = new C2586P4();

    private /* synthetic */ C2586P4() {
    }

    @Override // java.security.PrivilegedAction
    public final Object run() {
        boolean z = AbstractC2592Q4.f819a;
        return Boolean.valueOf(Boolean.getBoolean("org.openjdk.java.util.stream.tripwire"));
    }
}
