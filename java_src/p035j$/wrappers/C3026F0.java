package p035j$.wrappers;

import java.util.function.ToLongFunction;
/* renamed from: j$.wrappers.F0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3026F0 implements ToLongFunction {

    /* renamed from: a */
    final /* synthetic */ p035j$.util.function.ToLongFunction f1142a;

    private /* synthetic */ C3026F0(p035j$.util.function.ToLongFunction toLongFunction) {
        this.f1142a = toLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToLongFunction m228a(p035j$.util.function.ToLongFunction toLongFunction) {
        if (toLongFunction == null) {
            return null;
        }
        return toLongFunction instanceof C3024E0 ? ((C3024E0) toLongFunction).f1140a : new C3026F0(toLongFunction);
    }

    @Override // java.util.function.ToLongFunction
    public /* synthetic */ long applyAsLong(Object obj) {
        return this.f1142a.applyAsLong(obj);
    }
}
