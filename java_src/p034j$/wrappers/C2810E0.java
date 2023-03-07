package p034j$.wrappers;

import p034j$.util.function.ToLongFunction;
/* renamed from: j$.wrappers.E0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2810E0 implements ToLongFunction {

    /* renamed from: a */
    final /* synthetic */ java.util.function.ToLongFunction f1129a;

    private /* synthetic */ C2810E0(java.util.function.ToLongFunction toLongFunction) {
        this.f1129a = toLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToLongFunction m237a(java.util.function.ToLongFunction toLongFunction) {
        if (toLongFunction == null) {
            return null;
        }
        return toLongFunction instanceof C2812F0 ? ((C2812F0) toLongFunction).f1131a : new C2810E0(toLongFunction);
    }

    @Override // p034j$.util.function.ToLongFunction
    public /* synthetic */ long applyAsLong(Object obj) {
        return this.f1129a.applyAsLong(obj);
    }
}
