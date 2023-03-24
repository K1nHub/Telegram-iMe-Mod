package p034j$.wrappers;

import p034j$.util.function.ToIntFunction;
/* renamed from: j$.wrappers.C0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2944C0 implements ToIntFunction {

    /* renamed from: a */
    final /* synthetic */ java.util.function.ToIntFunction f1131a;

    private /* synthetic */ C2944C0(java.util.function.ToIntFunction toIntFunction) {
        this.f1131a = toIntFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToIntFunction m241a(java.util.function.ToIntFunction toIntFunction) {
        if (toIntFunction == null) {
            return null;
        }
        return toIntFunction instanceof C2946D0 ? ((C2946D0) toIntFunction).f1133a : new C2944C0(toIntFunction);
    }

    @Override // p034j$.util.function.ToIntFunction
    public /* synthetic */ int applyAsInt(Object obj) {
        return this.f1131a.applyAsInt(obj);
    }
}
