package p034j$.wrappers;

import p034j$.util.function.ToIntFunction;
/* renamed from: j$.wrappers.C0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2930C0 implements ToIntFunction {

    /* renamed from: a */
    final /* synthetic */ java.util.function.ToIntFunction f1130a;

    private /* synthetic */ C2930C0(java.util.function.ToIntFunction toIntFunction) {
        this.f1130a = toIntFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToIntFunction m242a(java.util.function.ToIntFunction toIntFunction) {
        if (toIntFunction == null) {
            return null;
        }
        return toIntFunction instanceof C2932D0 ? ((C2932D0) toIntFunction).f1132a : new C2930C0(toIntFunction);
    }

    @Override // p034j$.util.function.ToIntFunction
    public /* synthetic */ int applyAsInt(Object obj) {
        return this.f1130a.applyAsInt(obj);
    }
}
