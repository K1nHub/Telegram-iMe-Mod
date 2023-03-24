package p034j$.wrappers;

import p034j$.util.function.ToLongFunction;
/* renamed from: j$.wrappers.E0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2948E0 implements ToLongFunction {

    /* renamed from: a */
    final /* synthetic */ java.util.function.ToLongFunction f1135a;

    private /* synthetic */ C2948E0(java.util.function.ToLongFunction toLongFunction) {
        this.f1135a = toLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToLongFunction m236a(java.util.function.ToLongFunction toLongFunction) {
        if (toLongFunction == null) {
            return null;
        }
        return toLongFunction instanceof C2950F0 ? ((C2950F0) toLongFunction).f1137a : new C2948E0(toLongFunction);
    }

    @Override // p034j$.util.function.ToLongFunction
    public /* synthetic */ long applyAsLong(Object obj) {
        return this.f1135a.applyAsLong(obj);
    }
}
