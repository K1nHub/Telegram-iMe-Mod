package p034j$.util;

import java.security.PrivilegedAction;
/* renamed from: j$.util.J */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2412J implements PrivilegedAction {

    /* renamed from: a */
    public static final /* synthetic */ C2412J f557a = new C2412J();

    private /* synthetic */ C2412J() {
    }

    @Override // java.security.PrivilegedAction
    public final Object run() {
        boolean z = AbstractC2413K.f558a;
        return Boolean.valueOf(Boolean.getBoolean("org.openjdk.java.util.stream.tripwire"));
    }
}
