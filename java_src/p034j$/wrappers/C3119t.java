package p034j$.wrappers;

import java.util.function.BiFunction;
import java.util.function.Function;
/* renamed from: j$.wrappers.t */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3119t implements BiFunction {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.function.BiFunction f1207a;

    private /* synthetic */ C3119t(p034j$.util.function.BiFunction biFunction) {
        this.f1207a = biFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ BiFunction m100a(p034j$.util.function.BiFunction biFunction) {
        if (biFunction == null) {
            return null;
        }
        return biFunction instanceof C3117s ? ((C3117s) biFunction).f1205a : new C3119t(biFunction);
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return m100a(this.f1207a.andThen(C3063L.m189a(function)));
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1207a.apply(obj, obj2);
    }
}
