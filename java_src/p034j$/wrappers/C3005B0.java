package p034j$.wrappers;

import java.util.function.ToDoubleFunction;
/* renamed from: j$.wrappers.B0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3005B0 implements ToDoubleFunction {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.function.ToDoubleFunction f1129a;

    private /* synthetic */ C3005B0(p034j$.util.function.ToDoubleFunction toDoubleFunction) {
        this.f1129a = toDoubleFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToDoubleFunction m224a(p034j$.util.function.ToDoubleFunction toDoubleFunction) {
        if (toDoubleFunction == null) {
            return null;
        }
        return toDoubleFunction instanceof C3003A0 ? ((C3003A0) toDoubleFunction).f1127a : new C3005B0(toDoubleFunction);
    }

    @Override // java.util.function.ToDoubleFunction
    public /* synthetic */ double applyAsDouble(Object obj) {
        return this.f1129a.applyAsDouble(obj);
    }
}
