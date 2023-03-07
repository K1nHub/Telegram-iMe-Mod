package p034j$.wrappers;

import java.util.function.BiFunction;
import java.util.function.Function;
/* renamed from: j$.wrappers.t */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2879t implements BiFunction {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.function.BiFunction f1198a;

    private /* synthetic */ C2879t(p034j$.util.function.BiFunction biFunction) {
        this.f1198a = biFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ BiFunction m115a(p034j$.util.function.BiFunction biFunction) {
        if (biFunction == null) {
            return null;
        }
        return biFunction instanceof C2877s ? ((C2877s) biFunction).f1196a : new C2879t(biFunction);
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return m115a(this.f1198a.andThen(C2823L.m204a(function)));
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1198a.apply(obj, obj2);
    }
}
