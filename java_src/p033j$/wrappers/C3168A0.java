package p033j$.wrappers;

import p033j$.util.function.ToDoubleFunction;
/* renamed from: j$.wrappers.A0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3168A0 implements ToDoubleFunction {

    /* renamed from: a */
    final /* synthetic */ java.util.function.ToDoubleFunction f1212a;

    private /* synthetic */ C3168A0(java.util.function.ToDoubleFunction toDoubleFunction) {
        this.f1212a = toDoubleFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToDoubleFunction m231a(java.util.function.ToDoubleFunction toDoubleFunction) {
        if (toDoubleFunction == null) {
            return null;
        }
        return toDoubleFunction instanceof C3170B0 ? ((C3170B0) toDoubleFunction).f1214a : new C3168A0(toDoubleFunction);
    }

    @Override // p033j$.util.function.ToDoubleFunction
    public /* synthetic */ double applyAsDouble(Object obj) {
        return this.f1212a.applyAsDouble(obj);
    }
}
