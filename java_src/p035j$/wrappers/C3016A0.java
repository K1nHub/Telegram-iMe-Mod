package p035j$.wrappers;

import p035j$.util.function.ToDoubleFunction;
/* renamed from: j$.wrappers.A0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3016A0 implements ToDoubleFunction {

    /* renamed from: a */
    final /* synthetic */ java.util.function.ToDoubleFunction f1132a;

    private /* synthetic */ C3016A0(java.util.function.ToDoubleFunction toDoubleFunction) {
        this.f1132a = toDoubleFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToDoubleFunction m240a(java.util.function.ToDoubleFunction toDoubleFunction) {
        if (toDoubleFunction == null) {
            return null;
        }
        return toDoubleFunction instanceof C3018B0 ? ((C3018B0) toDoubleFunction).f1134a : new C3016A0(toDoubleFunction);
    }

    @Override // p035j$.util.function.ToDoubleFunction
    public /* synthetic */ double applyAsDouble(Object obj) {
        return this.f1132a.applyAsDouble(obj);
    }
}
