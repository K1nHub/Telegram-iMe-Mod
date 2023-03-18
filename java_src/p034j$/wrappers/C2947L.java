package p034j$.wrappers;

import p034j$.util.function.Function;
/* renamed from: j$.wrappers.L */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2947L implements Function {

    /* renamed from: a */
    final /* synthetic */ java.util.function.Function f1147a;

    private /* synthetic */ C2947L(java.util.function.Function function) {
        this.f1147a = function;
    }

    /* renamed from: a */
    public static /* synthetic */ Function m204a(java.util.function.Function function) {
        if (function == null) {
            return null;
        }
        return function instanceof C2949M ? ((C2949M) function).f1149a : new C2947L(function);
    }

    @Override // p034j$.util.function.Function
    public /* synthetic */ Function andThen(Function function) {
        return m204a(this.f1147a.andThen(C2949M.m202a(function)));
    }

    @Override // p034j$.util.function.Function
    public /* synthetic */ Object apply(Object obj) {
        return this.f1147a.apply(obj);
    }

    @Override // p034j$.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        return m204a(this.f1147a.compose(C2949M.m202a(function)));
    }
}
