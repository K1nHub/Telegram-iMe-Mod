package p033j$.wrappers;

import java.util.function.ToLongFunction;
/* renamed from: j$.wrappers.C0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3165C0 implements ToLongFunction {

    /* renamed from: a */
    final /* synthetic */ p033j$.util.function.ToLongFunction f1267a;

    private /* synthetic */ C3165C0(p033j$.util.function.ToLongFunction toLongFunction) {
        this.f1267a = toLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToLongFunction m291a(p033j$.util.function.ToLongFunction toLongFunction) {
        if (toLongFunction == null) {
            return null;
        }
        return toLongFunction instanceof C3163B0 ? ((C3163B0) toLongFunction).f1265a : new C3165C0(toLongFunction);
    }

    @Override // java.util.function.ToLongFunction
    public /* synthetic */ long applyAsLong(Object obj) {
        return this.f1267a.applyAsLong(obj);
    }
}
