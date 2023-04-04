package p035j$.wrappers;

import java.util.function.BiFunction;
import java.util.function.Function;
/* renamed from: j$.wrappers.t */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3093t implements BiFunction {

    /* renamed from: a */
    final /* synthetic */ p035j$.util.function.BiFunction f1209a;

    private /* synthetic */ C3093t(p035j$.util.function.BiFunction biFunction) {
        this.f1209a = biFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ BiFunction m109a(p035j$.util.function.BiFunction biFunction) {
        if (biFunction == null) {
            return null;
        }
        return biFunction instanceof C3091s ? ((C3091s) biFunction).f1207a : new C3093t(biFunction);
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return m109a(this.f1209a.andThen(C3037L.m198a(function)));
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1209a.apply(obj, obj2);
    }
}
