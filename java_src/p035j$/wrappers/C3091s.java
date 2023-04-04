package p035j$.wrappers;

import p035j$.util.function.BiFunction;
import p035j$.util.function.Function;
/* renamed from: j$.wrappers.s */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3091s implements BiFunction {

    /* renamed from: a */
    final /* synthetic */ java.util.function.BiFunction f1207a;

    private /* synthetic */ C3091s(java.util.function.BiFunction biFunction) {
        this.f1207a = biFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ BiFunction m111a(java.util.function.BiFunction biFunction) {
        if (biFunction == null) {
            return null;
        }
        return biFunction instanceof C3093t ? ((C3093t) biFunction).f1209a : new C3091s(biFunction);
    }

    @Override // p035j$.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return m111a(this.f1207a.andThen(C3039M.m196a(function)));
    }

    @Override // p035j$.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1207a.apply(obj, obj2);
    }
}
