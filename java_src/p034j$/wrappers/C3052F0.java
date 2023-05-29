package p034j$.wrappers;

import java.util.function.ToLongFunction;
/* renamed from: j$.wrappers.F0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3052F0 implements ToLongFunction {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.function.ToLongFunction f1140a;

    private /* synthetic */ C3052F0(p034j$.util.function.ToLongFunction toLongFunction) {
        this.f1140a = toLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToLongFunction m219a(p034j$.util.function.ToLongFunction toLongFunction) {
        if (toLongFunction == null) {
            return null;
        }
        return toLongFunction instanceof C3050E0 ? ((C3050E0) toLongFunction).f1138a : new C3052F0(toLongFunction);
    }

    @Override // java.util.function.ToLongFunction
    public /* synthetic */ long applyAsLong(Object obj) {
        return this.f1140a.applyAsLong(obj);
    }
}
