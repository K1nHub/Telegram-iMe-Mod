package p033j$.wrappers;

import p033j$.util.function.ToLongFunction;
/* renamed from: j$.wrappers.B0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3161B0 implements ToLongFunction {

    /* renamed from: a */
    final /* synthetic */ java.util.function.ToLongFunction f1265a;

    private /* synthetic */ C3161B0(java.util.function.ToLongFunction toLongFunction) {
        this.f1265a = toLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToLongFunction m297a(java.util.function.ToLongFunction toLongFunction) {
        if (toLongFunction == null) {
            return null;
        }
        return toLongFunction instanceof C3163C0 ? ((C3163C0) toLongFunction).f1267a : new C3161B0(toLongFunction);
    }

    @Override // p033j$.util.function.ToLongFunction
    public /* synthetic */ long applyAsLong(Object obj) {
        return this.f1265a.applyAsLong(obj);
    }
}
