package p034j$.wrappers;

import java.util.function.BiFunction;
import java.util.function.Function;
/* renamed from: j$.wrappers.t */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3003t implements BiFunction {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.function.BiFunction f1203a;

    private /* synthetic */ C3003t(p034j$.util.function.BiFunction biFunction) {
        this.f1203a = biFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ BiFunction m115a(p034j$.util.function.BiFunction biFunction) {
        if (biFunction == null) {
            return null;
        }
        return biFunction instanceof C3001s ? ((C3001s) biFunction).f1201a : new C3003t(biFunction);
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return m115a(this.f1203a.andThen(C2947L.m204a(function)));
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1203a.apply(obj, obj2);
    }
}
