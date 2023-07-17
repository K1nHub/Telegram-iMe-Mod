package p033j$.wrappers;

import java.util.function.ToLongFunction;
/* renamed from: j$.wrappers.F0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3178F0 implements ToLongFunction {

    /* renamed from: a */
    final /* synthetic */ p033j$.util.function.ToLongFunction f1222a;

    private /* synthetic */ C3178F0(p033j$.util.function.ToLongFunction toLongFunction) {
        this.f1222a = toLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToLongFunction m219a(p033j$.util.function.ToLongFunction toLongFunction) {
        if (toLongFunction == null) {
            return null;
        }
        return toLongFunction instanceof C3176E0 ? ((C3176E0) toLongFunction).f1220a : new C3178F0(toLongFunction);
    }

    @Override // java.util.function.ToLongFunction
    public /* synthetic */ long applyAsLong(Object obj) {
        return this.f1222a.applyAsLong(obj);
    }
}
