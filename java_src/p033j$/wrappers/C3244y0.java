package p033j$.wrappers;

import java.util.function.ToDoubleFunction;
/* renamed from: j$.wrappers.y0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3244y0 implements ToDoubleFunction {

    /* renamed from: a */
    final /* synthetic */ p033j$.util.function.ToDoubleFunction f1348a;

    private /* synthetic */ C3244y0(p033j$.util.function.ToDoubleFunction toDoubleFunction) {
        this.f1348a = toDoubleFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToDoubleFunction m160a(p033j$.util.function.ToDoubleFunction toDoubleFunction) {
        if (toDoubleFunction == null) {
            return null;
        }
        return toDoubleFunction instanceof C3242x0 ? ((C3242x0) toDoubleFunction).f1346a : new C3244y0(toDoubleFunction);
    }

    @Override // java.util.function.ToDoubleFunction
    public /* synthetic */ double applyAsDouble(Object obj) {
        return this.f1348a.applyAsDouble(obj);
    }
}
