package p035j$.wrappers;

import java.util.function.ToDoubleFunction;
/* renamed from: j$.wrappers.B0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3018B0 implements ToDoubleFunction {

    /* renamed from: a */
    final /* synthetic */ p035j$.util.function.ToDoubleFunction f1134a;

    private /* synthetic */ C3018B0(p035j$.util.function.ToDoubleFunction toDoubleFunction) {
        this.f1134a = toDoubleFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToDoubleFunction m238a(p035j$.util.function.ToDoubleFunction toDoubleFunction) {
        if (toDoubleFunction == null) {
            return null;
        }
        return toDoubleFunction instanceof C3016A0 ? ((C3016A0) toDoubleFunction).f1132a : new C3018B0(toDoubleFunction);
    }

    @Override // java.util.function.ToDoubleFunction
    public /* synthetic */ double applyAsDouble(Object obj) {
        return this.f1134a.applyAsDouble(obj);
    }
}
