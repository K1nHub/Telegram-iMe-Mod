package p033j$.util;

import java.security.PrivilegedAction;
/* renamed from: j$.util.J */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2778J implements PrivilegedAction {

    /* renamed from: a */
    public static final /* synthetic */ C2778J f648a = new C2778J();

    private /* synthetic */ C2778J() {
    }

    @Override // java.security.PrivilegedAction
    public final Object run() {
        boolean z = AbstractC2779K.f649a;
        return Boolean.valueOf(Boolean.getBoolean("org.openjdk.java.util.stream.tripwire"));
    }
}
