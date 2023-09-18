package p033j$.wrappers;

import java.util.function.BiFunction;
import java.util.function.Function;
/* renamed from: j$.wrappers.t */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3300t implements BiFunction {

    /* renamed from: a */
    final /* synthetic */ p033j$.util.function.BiFunction f1293a;

    private /* synthetic */ C3300t(p033j$.util.function.BiFunction biFunction) {
        this.f1293a = biFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ BiFunction m118a(p033j$.util.function.BiFunction biFunction) {
        if (biFunction == null) {
            return null;
        }
        return biFunction instanceof C3298s ? ((C3298s) biFunction).f1291a : new C3300t(biFunction);
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return m118a(this.f1293a.andThen(C3244L.m207a(function)));
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1293a.apply(obj, obj2);
    }
}
