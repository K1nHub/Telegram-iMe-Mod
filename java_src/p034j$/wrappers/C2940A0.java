package p034j$.wrappers;

import p034j$.util.function.ToDoubleFunction;
/* renamed from: j$.wrappers.A0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2940A0 implements ToDoubleFunction {

    /* renamed from: a */
    final /* synthetic */ java.util.function.ToDoubleFunction f1127a;

    private /* synthetic */ C2940A0(java.util.function.ToDoubleFunction toDoubleFunction) {
        this.f1127a = toDoubleFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToDoubleFunction m245a(java.util.function.ToDoubleFunction toDoubleFunction) {
        if (toDoubleFunction == null) {
            return null;
        }
        return toDoubleFunction instanceof C2942B0 ? ((C2942B0) toDoubleFunction).f1129a : new C2940A0(toDoubleFunction);
    }

    @Override // p034j$.util.function.ToDoubleFunction
    public /* synthetic */ double applyAsDouble(Object obj) {
        return this.f1127a.applyAsDouble(obj);
    }
}
