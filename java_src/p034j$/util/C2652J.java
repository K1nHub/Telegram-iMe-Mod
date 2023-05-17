package p034j$.util;

import java.security.PrivilegedAction;
/* renamed from: j$.util.J */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2652J implements PrivilegedAction {

    /* renamed from: a */
    public static final /* synthetic */ C2652J f566a = new C2652J();

    private /* synthetic */ C2652J() {
    }

    @Override // java.security.PrivilegedAction
    public final Object run() {
        boolean z = AbstractC2653K.f567a;
        return Boolean.valueOf(Boolean.getBoolean("org.openjdk.java.util.stream.tripwire"));
    }
}
