package p033j$.wrappers;

import p033j$.util.function.ToDoubleFunction;
/* renamed from: j$.wrappers.x0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3242x0 implements ToDoubleFunction {

    /* renamed from: a */
    final /* synthetic */ java.util.function.ToDoubleFunction f1346a;

    private /* synthetic */ C3242x0(java.util.function.ToDoubleFunction toDoubleFunction) {
        this.f1346a = toDoubleFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToDoubleFunction m163a(java.util.function.ToDoubleFunction toDoubleFunction) {
        if (toDoubleFunction == null) {
            return null;
        }
        return toDoubleFunction instanceof C3244y0 ? ((C3244y0) toDoubleFunction).f1348a : new C3242x0(toDoubleFunction);
    }

    @Override // p033j$.util.function.ToDoubleFunction
    public /* synthetic */ double applyAsDouble(Object obj) {
        return this.f1346a.applyAsDouble(obj);
    }
}
