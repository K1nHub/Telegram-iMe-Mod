package p034j$.util;

import java.security.PrivilegedAction;
/* renamed from: j$.util.J */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2550J implements PrivilegedAction {

    /* renamed from: a */
    public static final /* synthetic */ C2550J f563a = new C2550J();

    private /* synthetic */ C2550J() {
    }

    @Override // java.security.PrivilegedAction
    public final Object run() {
        boolean z = AbstractC2551K.f564a;
        return Boolean.valueOf(Boolean.getBoolean("org.openjdk.java.util.stream.tripwire"));
    }
}
