package p033j$.wrappers;

import p033j$.util.function.ToIntFunction;
/* renamed from: j$.wrappers.z0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3246z0 implements ToIntFunction {

    /* renamed from: a */
    final /* synthetic */ java.util.function.ToIntFunction f1350a;

    private /* synthetic */ C3246z0(java.util.function.ToIntFunction toIntFunction) {
        this.f1350a = toIntFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToIntFunction m158a(java.util.function.ToIntFunction toIntFunction) {
        if (toIntFunction == null) {
            return null;
        }
        return toIntFunction instanceof C3159A0 ? ((C3159A0) toIntFunction).f1263a : new C3246z0(toIntFunction);
    }

    @Override // p033j$.util.function.ToIntFunction
    public /* synthetic */ int applyAsInt(Object obj) {
        return this.f1350a.applyAsInt(obj);
    }
}
