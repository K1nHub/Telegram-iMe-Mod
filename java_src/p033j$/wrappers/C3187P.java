package p033j$.wrappers;

import p033j$.util.function.IntFunction;
/* renamed from: j$.wrappers.P */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3187P implements IntFunction {

    /* renamed from: a */
    final /* synthetic */ java.util.function.IntFunction f1289a;

    private /* synthetic */ C3187P(java.util.function.IntFunction intFunction) {
        this.f1289a = intFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ IntFunction m233a(java.util.function.IntFunction intFunction) {
        if (intFunction == null) {
            return null;
        }
        return intFunction instanceof C3188Q ? ((C3188Q) intFunction).f1290a : new C3187P(intFunction);
    }

    @Override // p033j$.util.function.IntFunction
    public /* synthetic */ Object apply(int i) {
        return this.f1289a.apply(i);
    }
}
