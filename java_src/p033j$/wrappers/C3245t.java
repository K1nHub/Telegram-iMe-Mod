package p033j$.wrappers;

import java.util.function.BiFunction;
import java.util.function.Function;
/* renamed from: j$.wrappers.t */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3245t implements BiFunction {

    /* renamed from: a */
    final /* synthetic */ p033j$.util.function.BiFunction f1292a;

    private /* synthetic */ C3245t(p033j$.util.function.BiFunction biFunction) {
        this.f1292a = biFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ BiFunction m118a(p033j$.util.function.BiFunction biFunction) {
        if (biFunction == null) {
            return null;
        }
        return biFunction instanceof C3243s ? ((C3243s) biFunction).f1290a : new C3245t(biFunction);
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return m118a(this.f1292a.andThen(C3189L.m207a(function)));
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1292a.apply(obj, obj2);
    }
}
