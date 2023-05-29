package p034j$.util;

import java.security.PrivilegedAction;
/* renamed from: j$.util.J */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2657J implements PrivilegedAction {

    /* renamed from: a */
    public static final /* synthetic */ C2657J f566a = new C2657J();

    private /* synthetic */ C2657J() {
    }

    @Override // java.security.PrivilegedAction
    public final Object run() {
        boolean z = AbstractC2658K.f567a;
        return Boolean.valueOf(Boolean.getBoolean("org.openjdk.java.util.stream.tripwire"));
    }
}
