package p033j$.wrappers;

import p033j$.util.function.BiFunction;
import p033j$.util.function.Function;
/* renamed from: j$.wrappers.s */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3243s implements BiFunction {

    /* renamed from: a */
    final /* synthetic */ java.util.function.BiFunction f1290a;

    private /* synthetic */ C3243s(java.util.function.BiFunction biFunction) {
        this.f1290a = biFunction;
    }

    /* renamed from: a */
    public static /* synthetic */ BiFunction m120a(java.util.function.BiFunction biFunction) {
        if (biFunction == null) {
            return null;
        }
        return biFunction instanceof C3245t ? ((C3245t) biFunction).f1292a : new C3243s(biFunction);
    }

    @Override // p033j$.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return m120a(this.f1290a.andThen(C3191M.m205a(function)));
    }

    @Override // p033j$.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1290a.apply(obj, obj2);
    }
}
