package p034j$.wrappers;

import java.util.function.ToLongFunction;
/* renamed from: j$.wrappers.F0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2950F0 implements ToLongFunction {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.function.ToLongFunction f1137a;

    private /* synthetic */ C2950F0(p034j$.util.function.ToLongFunction toLongFunction) {
        this.f1137a = toLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToLongFunction m233a(p034j$.util.function.ToLongFunction toLongFunction) {
        if (toLongFunction == null) {
            return null;
        }
        return toLongFunction instanceof C2948E0 ? ((C2948E0) toLongFunction).f1135a : new C2950F0(toLongFunction);
    }

    @Override // java.util.function.ToLongFunction
    public /* synthetic */ long applyAsLong(Object obj) {
        return this.f1137a.applyAsLong(obj);
    }
}
