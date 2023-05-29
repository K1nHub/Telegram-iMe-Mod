package p034j$.wrappers;

import java.util.function.ToDoubleFunction;
/* renamed from: j$.wrappers.B0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3044B0 implements ToDoubleFunction {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.function.ToDoubleFunction f1132a;

    private /* synthetic */ C3044B0(p034j$.util.function.ToDoubleFunction toDoubleFunction) {
        this.f1132a = toDoubleFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToDoubleFunction m229a(p034j$.util.function.ToDoubleFunction toDoubleFunction) {
        if (toDoubleFunction == null) {
            return null;
        }
        return toDoubleFunction instanceof C3042A0 ? ((C3042A0) toDoubleFunction).f1130a : new C3044B0(toDoubleFunction);
    }

    @Override // java.util.function.ToDoubleFunction
    public /* synthetic */ double applyAsDouble(Object obj) {
        return this.f1132a.applyAsDouble(obj);
    }
}
