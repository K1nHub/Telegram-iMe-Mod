package p033j$.wrappers;

import java.util.function.BiFunction;
import java.util.function.Function;
/* renamed from: j$.wrappers.t */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3245t implements BiFunction {

    /* renamed from: a */
    final /* synthetic */ p033j$.util.function.BiFunction f1289a;

    private /* synthetic */ C3245t(p033j$.util.function.BiFunction biFunction) {
        this.f1289a = biFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ BiFunction m100a(p033j$.util.function.BiFunction biFunction) {
        if (biFunction == null) {
            return null;
        }
        return biFunction instanceof C3243s ? ((C3243s) biFunction).f1287a : new C3245t(biFunction);
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return m100a(this.f1289a.andThen(C3189L.m189a(function)));
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1289a.apply(obj, obj2);
    }
}
