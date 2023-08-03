package p033j$.wrappers;

import p033j$.util.function.ToLongFunction;
/* renamed from: j$.wrappers.E0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3176E0 implements ToLongFunction {

    /* renamed from: a */
    final /* synthetic */ java.util.function.ToLongFunction f1223a;

    private /* synthetic */ C3176E0(java.util.function.ToLongFunction toLongFunction) {
        this.f1223a = toLongFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ ToLongFunction m240a(java.util.function.ToLongFunction toLongFunction) {
        if (toLongFunction == null) {
            return null;
        }
        return toLongFunction instanceof C3178F0 ? ((C3178F0) toLongFunction).f1225a : new C3176E0(toLongFunction);
    }

    @Override // p033j$.util.function.ToLongFunction
    public /* synthetic */ long applyAsLong(Object obj) {
        return this.f1223a.applyAsLong(obj);
    }
}
