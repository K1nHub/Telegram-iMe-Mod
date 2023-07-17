package p033j$.util.stream;

import java.security.PrivilegedAction;
/* renamed from: j$.util.stream.P4 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2952P4 implements PrivilegedAction {

    /* renamed from: a */
    public static final /* synthetic */ C2952P4 f903a = new C2952P4();

    private /* synthetic */ C2952P4() {
    }

    @Override // java.security.PrivilegedAction
    public final Object run() {
        boolean z = AbstractC2958Q4.f910a;
        return Boolean.valueOf(Boolean.getBoolean("org.openjdk.java.util.stream.tripwire"));
    }
}
