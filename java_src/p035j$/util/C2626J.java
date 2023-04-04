package p035j$.util;

import java.security.PrivilegedAction;
/* renamed from: j$.util.J */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2626J implements PrivilegedAction {

    /* renamed from: a */
    public static final /* synthetic */ C2626J f568a = new C2626J();

    private /* synthetic */ C2626J() {
    }

    @Override // java.security.PrivilegedAction
    public final Object run() {
        boolean z = AbstractC2627K.f569a;
        return Boolean.valueOf(Boolean.getBoolean("org.openjdk.java.util.stream.tripwire"));
    }
}
