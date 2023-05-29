package p034j$.wrappers;

import p034j$.util.function.ToIntFunction;
/* renamed from: j$.wrappers.C0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3051C0 implements ToIntFunction {

    /* renamed from: a */
    final /* synthetic */ java.util.function.ToIntFunction f1134a;

    private /* synthetic */ C3051C0(java.util.function.ToIntFunction toIntFunction) {
        this.f1134a = toIntFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToIntFunction m227a(java.util.function.ToIntFunction toIntFunction) {
        if (toIntFunction == null) {
            return null;
        }
        return toIntFunction instanceof C3053D0 ? ((C3053D0) toIntFunction).f1136a : new C3051C0(toIntFunction);
    }

    @Override // p034j$.util.function.ToIntFunction
    public /* synthetic */ int applyAsInt(Object obj) {
        return this.f1134a.applyAsInt(obj);
    }
}
