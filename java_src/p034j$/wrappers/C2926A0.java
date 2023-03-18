package p034j$.wrappers;

import p034j$.util.function.ToDoubleFunction;
/* renamed from: j$.wrappers.A0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2926A0 implements ToDoubleFunction {

    /* renamed from: a */
    final /* synthetic */ java.util.function.ToDoubleFunction f1126a;

    private /* synthetic */ C2926A0(java.util.function.ToDoubleFunction toDoubleFunction) {
        this.f1126a = toDoubleFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToDoubleFunction m246a(java.util.function.ToDoubleFunction toDoubleFunction) {
        if (toDoubleFunction == null) {
            return null;
        }
        return toDoubleFunction instanceof C2928B0 ? ((C2928B0) toDoubleFunction).f1128a : new C2926A0(toDoubleFunction);
    }

    @Override // p034j$.util.function.ToDoubleFunction
    public /* synthetic */ double applyAsDouble(Object obj) {
        return this.f1126a.applyAsDouble(obj);
    }
}
