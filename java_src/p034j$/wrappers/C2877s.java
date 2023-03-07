package p034j$.wrappers;

import p034j$.util.function.BiFunction;
import p034j$.util.function.Function;
/* renamed from: j$.wrappers.s */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2877s implements BiFunction {

    /* renamed from: a */
    final /* synthetic */ java.util.function.BiFunction f1196a;

    private /* synthetic */ C2877s(java.util.function.BiFunction biFunction) {
        this.f1196a = biFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ BiFunction m117a(java.util.function.BiFunction biFunction) {
        if (biFunction == null) {
            return null;
        }
        return biFunction instanceof C2879t ? ((C2879t) biFunction).f1198a : new C2877s(biFunction);
    }

    @Override // p034j$.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return m117a(this.f1196a.andThen(C2825M.m202a(function)));
    }

    @Override // p034j$.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1196a.apply(obj, obj2);
    }
}
