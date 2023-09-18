package p033j$.wrappers;

import java.util.function.ToDoubleFunction;
/* renamed from: j$.wrappers.B0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3225B0 implements ToDoubleFunction {

    /* renamed from: a */
    final /* synthetic */ p033j$.util.function.ToDoubleFunction f1218a;

    private /* synthetic */ C3225B0(p033j$.util.function.ToDoubleFunction toDoubleFunction) {
        this.f1218a = toDoubleFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToDoubleFunction m247a(p033j$.util.function.ToDoubleFunction toDoubleFunction) {
        if (toDoubleFunction == null) {
            return null;
        }
        return toDoubleFunction instanceof C3223A0 ? ((C3223A0) toDoubleFunction).f1216a : new C3225B0(toDoubleFunction);
    }

    @Override // java.util.function.ToDoubleFunction
    public /* synthetic */ double applyAsDouble(Object obj) {
        return this.f1218a.applyAsDouble(obj);
    }
}
