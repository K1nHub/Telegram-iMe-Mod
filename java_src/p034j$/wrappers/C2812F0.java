package p034j$.wrappers;

import java.util.function.ToLongFunction;
/* renamed from: j$.wrappers.F0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2812F0 implements ToLongFunction {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.function.ToLongFunction f1131a;

    private /* synthetic */ C2812F0(p034j$.util.function.ToLongFunction toLongFunction) {
        this.f1131a = toLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToLongFunction m234a(p034j$.util.function.ToLongFunction toLongFunction) {
        if (toLongFunction == null) {
            return null;
        }
        return toLongFunction instanceof C2810E0 ? ((C2810E0) toLongFunction).f1129a : new C2812F0(toLongFunction);
    }

    @Override // java.util.function.ToLongFunction
    public /* synthetic */ long applyAsLong(Object obj) {
        return this.f1131a.applyAsLong(obj);
    }
}
