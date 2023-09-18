package p033j$.wrappers;

import p033j$.util.function.BiFunction;
import p033j$.util.function.Function;
/* renamed from: j$.wrappers.s */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3298s implements BiFunction {

    /* renamed from: a */
    final /* synthetic */ java.util.function.BiFunction f1291a;

    private /* synthetic */ C3298s(java.util.function.BiFunction biFunction) {
        this.f1291a = biFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ BiFunction m120a(java.util.function.BiFunction biFunction) {
        if (biFunction == null) {
            return null;
        }
        return biFunction instanceof C3300t ? ((C3300t) biFunction).f1293a : new C3298s(biFunction);
    }

    @Override // p033j$.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return m120a(this.f1291a.andThen(C3246M.m205a(function)));
    }

    @Override // p033j$.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1291a.apply(obj, obj2);
    }
}
