package p034j$.wrappers;

import java.util.function.BiFunction;
import java.util.function.Function;
/* renamed from: j$.wrappers.t */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3017t implements BiFunction {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.function.BiFunction f1204a;

    private /* synthetic */ C3017t(p034j$.util.function.BiFunction biFunction) {
        this.f1204a = biFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ BiFunction m114a(p034j$.util.function.BiFunction biFunction) {
        if (biFunction == null) {
            return null;
        }
        return biFunction instanceof C3015s ? ((C3015s) biFunction).f1202a : new C3017t(biFunction);
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return m114a(this.f1204a.andThen(C2961L.m203a(function)));
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1204a.apply(obj, obj2);
    }
}
