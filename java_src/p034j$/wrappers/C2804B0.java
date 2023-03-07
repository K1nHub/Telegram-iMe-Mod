package p034j$.wrappers;

import java.util.function.ToDoubleFunction;
/* renamed from: j$.wrappers.B0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2804B0 implements ToDoubleFunction {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.function.ToDoubleFunction f1123a;

    private /* synthetic */ C2804B0(p034j$.util.function.ToDoubleFunction toDoubleFunction) {
        this.f1123a = toDoubleFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToDoubleFunction m244a(p034j$.util.function.ToDoubleFunction toDoubleFunction) {
        if (toDoubleFunction == null) {
            return null;
        }
        return toDoubleFunction instanceof C2802A0 ? ((C2802A0) toDoubleFunction).f1121a : new C2804B0(toDoubleFunction);
    }

    @Override // java.util.function.ToDoubleFunction
    public /* synthetic */ double applyAsDouble(Object obj) {
        return this.f1123a.applyAsDouble(obj);
    }
}
