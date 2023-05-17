package p034j$.wrappers;

import p034j$.util.function.ToDoubleFunction;
/* renamed from: j$.wrappers.A0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3042A0 implements ToDoubleFunction {

    /* renamed from: a */
    final /* synthetic */ java.util.function.ToDoubleFunction f1130a;

    private /* synthetic */ C3042A0(java.util.function.ToDoubleFunction toDoubleFunction) {
        this.f1130a = toDoubleFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToDoubleFunction m231a(java.util.function.ToDoubleFunction toDoubleFunction) {
        if (toDoubleFunction == null) {
            return null;
        }
        return toDoubleFunction instanceof C3044B0 ? ((C3044B0) toDoubleFunction).f1132a : new C3042A0(toDoubleFunction);
    }

    @Override // p034j$.util.function.ToDoubleFunction
    public /* synthetic */ double applyAsDouble(Object obj) {
        return this.f1130a.applyAsDouble(obj);
    }
}
