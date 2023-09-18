package p033j$.wrappers;

import java.util.function.ToLongFunction;
/* renamed from: j$.wrappers.F0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3233F0 implements ToLongFunction {

    /* renamed from: a */
    final /* synthetic */ p033j$.util.function.ToLongFunction f1226a;

    private /* synthetic */ C3233F0(p033j$.util.function.ToLongFunction toLongFunction) {
        this.f1226a = toLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToLongFunction m237a(p033j$.util.function.ToLongFunction toLongFunction) {
        if (toLongFunction == null) {
            return null;
        }
        return toLongFunction instanceof C3231E0 ? ((C3231E0) toLongFunction).f1224a : new C3233F0(toLongFunction);
    }

    @Override // java.util.function.ToLongFunction
    public /* synthetic */ long applyAsLong(Object obj) {
        return this.f1226a.applyAsLong(obj);
    }
}
