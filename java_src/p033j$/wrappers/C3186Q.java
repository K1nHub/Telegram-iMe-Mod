package p033j$.wrappers;

import java.util.function.IntFunction;
/* renamed from: j$.wrappers.Q */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3186Q implements IntFunction {

    /* renamed from: a */
    final /* synthetic */ p033j$.util.function.IntFunction f1290a;

    private /* synthetic */ C3186Q(p033j$.util.function.IntFunction intFunction) {
        this.f1290a = intFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ IntFunction m235a(p033j$.util.function.IntFunction intFunction) {
        if (intFunction == null) {
            return null;
        }
        return intFunction instanceof C3185P ? ((C3185P) intFunction).f1289a : new C3186Q(intFunction);
    }

    @Override // java.util.function.IntFunction
    public /* synthetic */ Object apply(int i) {
        return this.f1290a.apply(i);
    }
}
