package p033j$.wrappers;

import p033j$.util.function.BiFunction;
import p033j$.util.function.Function;
/* renamed from: j$.wrappers.s */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3382s implements BiFunction {

    /* renamed from: a */
    final /* synthetic */ java.util.function.BiFunction f1300a;

    private /* synthetic */ C3382s(java.util.function.BiFunction biFunction) {
        this.f1300a = biFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ BiFunction m120a(java.util.function.BiFunction biFunction) {
        if (biFunction == null) {
            return null;
        }
        return biFunction instanceof C3384t ? ((C3384t) biFunction).f1302a : new C3382s(biFunction);
    }

    @Override // p033j$.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return m120a(this.f1300a.andThen(C3330M.m205a(function)));
    }

    @Override // p033j$.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1300a.apply(obj, obj2);
    }
}
