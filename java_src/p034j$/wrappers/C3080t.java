package p034j$.wrappers;

import java.util.function.BiFunction;
import java.util.function.Function;
/* renamed from: j$.wrappers.t */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3080t implements BiFunction {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.function.BiFunction f1204a;

    private /* synthetic */ C3080t(p034j$.util.function.BiFunction biFunction) {
        this.f1204a = biFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ BiFunction m95a(p034j$.util.function.BiFunction biFunction) {
        if (biFunction == null) {
            return null;
        }
        return biFunction instanceof C3078s ? ((C3078s) biFunction).f1202a : new C3080t(biFunction);
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return m95a(this.f1204a.andThen(C3024L.m184a(function)));
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1204a.apply(obj, obj2);
    }
}
