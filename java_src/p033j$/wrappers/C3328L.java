package p033j$.wrappers;

import p033j$.util.function.Function;
/* renamed from: j$.wrappers.L */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3328L implements Function {

    /* renamed from: a */
    final /* synthetic */ java.util.function.Function f1246a;

    private /* synthetic */ C3328L(java.util.function.Function function) {
        this.f1246a = function;
    }

    /* renamed from: a */
    public static /* synthetic */ Function m207a(java.util.function.Function function) {
        if (function == null) {
            return null;
        }
        return function instanceof C3330M ? ((C3330M) function).f1248a : new C3328L(function);
    }

    @Override // p033j$.util.function.Function
    public /* synthetic */ Function andThen(Function function) {
        return m207a(this.f1246a.andThen(C3330M.m205a(function)));
    }

    @Override // p033j$.util.function.Function
    public /* synthetic */ Object apply(Object obj) {
        return this.f1246a.apply(obj);
    }

    @Override // p033j$.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        return m207a(this.f1246a.compose(C3330M.m205a(function)));
    }
}
