package p035j$.wrappers;

import p035j$.util.function.ToLongFunction;
/* renamed from: j$.wrappers.E0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3024E0 implements ToLongFunction {

    /* renamed from: a */
    final /* synthetic */ java.util.function.ToLongFunction f1140a;

    private /* synthetic */ C3024E0(java.util.function.ToLongFunction toLongFunction) {
        this.f1140a = toLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToLongFunction m231a(java.util.function.ToLongFunction toLongFunction) {
        if (toLongFunction == null) {
            return null;
        }
        return toLongFunction instanceof C3026F0 ? ((C3026F0) toLongFunction).f1142a : new C3024E0(toLongFunction);
    }

    @Override // p035j$.util.function.ToLongFunction
    public /* synthetic */ long applyAsLong(Object obj) {
        return this.f1140a.applyAsLong(obj);
    }
}
