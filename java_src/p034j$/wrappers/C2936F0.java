package p034j$.wrappers;

import java.util.function.ToLongFunction;
/* renamed from: j$.wrappers.F0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2936F0 implements ToLongFunction {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.function.ToLongFunction f1136a;

    private /* synthetic */ C2936F0(p034j$.util.function.ToLongFunction toLongFunction) {
        this.f1136a = toLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToLongFunction m234a(p034j$.util.function.ToLongFunction toLongFunction) {
        if (toLongFunction == null) {
            return null;
        }
        return toLongFunction instanceof C2934E0 ? ((C2934E0) toLongFunction).f1134a : new C2936F0(toLongFunction);
    }

    @Override // java.util.function.ToLongFunction
    public /* synthetic */ long applyAsLong(Object obj) {
        return this.f1136a.applyAsLong(obj);
    }
}
