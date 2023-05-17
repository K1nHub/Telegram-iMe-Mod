package p034j$.wrappers;

import p034j$.util.function.ToLongFunction;
/* renamed from: j$.wrappers.E0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3050E0 implements ToLongFunction {

    /* renamed from: a */
    final /* synthetic */ java.util.function.ToLongFunction f1138a;

    private /* synthetic */ C3050E0(java.util.function.ToLongFunction toLongFunction) {
        this.f1138a = toLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToLongFunction m222a(java.util.function.ToLongFunction toLongFunction) {
        if (toLongFunction == null) {
            return null;
        }
        return toLongFunction instanceof C3052F0 ? ((C3052F0) toLongFunction).f1140a : new C3050E0(toLongFunction);
    }

    @Override // p034j$.util.function.ToLongFunction
    public /* synthetic */ long applyAsLong(Object obj) {
        return this.f1138a.applyAsLong(obj);
    }
}
