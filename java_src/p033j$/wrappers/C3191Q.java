package p033j$.wrappers;

import java.util.function.IntFunction;
/* renamed from: j$.wrappers.Q */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3191Q implements IntFunction {

    /* renamed from: a */
    final /* synthetic */ p033j$.util.function.IntFunction f1290a;

    private /* synthetic */ C3191Q(p033j$.util.function.IntFunction intFunction) {
        this.f1290a = intFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ IntFunction m232a(p033j$.util.function.IntFunction intFunction) {
        if (intFunction == null) {
            return null;
        }
        return intFunction instanceof C3190P ? ((C3190P) intFunction).f1289a : new C3191Q(intFunction);
    }

    @Override // java.util.function.IntFunction
    public /* synthetic */ Object apply(int i) {
        return this.f1290a.apply(i);
    }
}
