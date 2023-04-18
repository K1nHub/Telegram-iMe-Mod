package p034j$.wrappers;

import p034j$.util.function.BiFunction;
import p034j$.util.function.Function;
/* renamed from: j$.wrappers.s */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3078s implements BiFunction {

    /* renamed from: a */
    final /* synthetic */ java.util.function.BiFunction f1202a;

    private /* synthetic */ C3078s(java.util.function.BiFunction biFunction) {
        this.f1202a = biFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ BiFunction m97a(java.util.function.BiFunction biFunction) {
        if (biFunction == null) {
            return null;
        }
        return biFunction instanceof C3080t ? ((C3080t) biFunction).f1204a : new C3078s(biFunction);
    }

    @Override // p034j$.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return m97a(this.f1202a.andThen(C3026M.m182a(function)));
    }

    @Override // p034j$.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1202a.apply(obj, obj2);
    }
}
