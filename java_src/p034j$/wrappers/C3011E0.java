package p034j$.wrappers;

import p034j$.util.function.ToLongFunction;
/* renamed from: j$.wrappers.E0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3011E0 implements ToLongFunction {

    /* renamed from: a */
    final /* synthetic */ java.util.function.ToLongFunction f1135a;

    private /* synthetic */ C3011E0(java.util.function.ToLongFunction toLongFunction) {
        this.f1135a = toLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToLongFunction m217a(java.util.function.ToLongFunction toLongFunction) {
        if (toLongFunction == null) {
            return null;
        }
        return toLongFunction instanceof C3013F0 ? ((C3013F0) toLongFunction).f1137a : new C3011E0(toLongFunction);
    }

    @Override // p034j$.util.function.ToLongFunction
    public /* synthetic */ long applyAsLong(Object obj) {
        return this.f1135a.applyAsLong(obj);
    }
}
