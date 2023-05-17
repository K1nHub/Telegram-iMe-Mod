package p034j$.wrappers;

import p034j$.util.function.BiFunction;
import p034j$.util.function.Function;
/* renamed from: j$.wrappers.s */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3117s implements BiFunction {

    /* renamed from: a */
    final /* synthetic */ java.util.function.BiFunction f1205a;

    private /* synthetic */ C3117s(java.util.function.BiFunction biFunction) {
        this.f1205a = biFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ BiFunction m102a(java.util.function.BiFunction biFunction) {
        if (biFunction == null) {
            return null;
        }
        return biFunction instanceof C3119t ? ((C3119t) biFunction).f1207a : new C3117s(biFunction);
    }

    @Override // p034j$.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return m102a(this.f1205a.andThen(C3065M.m187a(function)));
    }

    @Override // p034j$.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1205a.apply(obj, obj2);
    }
}
