package p034j$.util;

import java.security.PrivilegedAction;
/* renamed from: j$.util.J */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2536J implements PrivilegedAction {

    /* renamed from: a */
    public static final /* synthetic */ C2536J f562a = new C2536J();

    private /* synthetic */ C2536J() {
    }

    @Override // java.security.PrivilegedAction
    public final Object run() {
        boolean z = AbstractC2537K.f563a;
        return Boolean.valueOf(Boolean.getBoolean("org.openjdk.java.util.stream.tripwire"));
    }
}
