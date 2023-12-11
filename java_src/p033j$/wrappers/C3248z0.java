package p033j$.wrappers;

import p033j$.util.function.ToIntFunction;
/* renamed from: j$.wrappers.z0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3248z0 implements ToIntFunction {

    /* renamed from: a */
    final /* synthetic */ java.util.function.ToIntFunction f1350a;

    private /* synthetic */ C3248z0(java.util.function.ToIntFunction toIntFunction) {
        this.f1350a = toIntFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToIntFunction m155a(java.util.function.ToIntFunction toIntFunction) {
        if (toIntFunction == null) {
            return null;
        }
        return toIntFunction instanceof C3161A0 ? ((C3161A0) toIntFunction).f1263a : new C3248z0(toIntFunction);
    }

    @Override // p033j$.util.function.ToIntFunction
    public /* synthetic */ int applyAsInt(Object obj) {
        return this.f1350a.applyAsInt(obj);
    }
}
