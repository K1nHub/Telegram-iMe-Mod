package p033j$.wrappers;

import java.util.function.BiFunction;
import java.util.function.Function;
/* renamed from: j$.wrappers.t */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3384t implements BiFunction {

    /* renamed from: a */
    final /* synthetic */ p033j$.util.function.BiFunction f1302a;

    private /* synthetic */ C3384t(p033j$.util.function.BiFunction biFunction) {
        this.f1302a = biFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ BiFunction m118a(p033j$.util.function.BiFunction biFunction) {
        if (biFunction == null) {
            return null;
        }
        return biFunction instanceof C3382s ? ((C3382s) biFunction).f1300a : new C3384t(biFunction);
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return m118a(this.f1302a.andThen(C3328L.m207a(function)));
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1302a.apply(obj, obj2);
    }
}
