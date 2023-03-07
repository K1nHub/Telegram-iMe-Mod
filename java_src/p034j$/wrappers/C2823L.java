package p034j$.wrappers;

import p034j$.util.function.Function;
/* renamed from: j$.wrappers.L */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2823L implements Function {

    /* renamed from: a */
    final /* synthetic */ java.util.function.Function f1142a;

    private /* synthetic */ C2823L(java.util.function.Function function) {
        this.f1142a = function;
    }

    /* renamed from: a */
    public static /* synthetic */ Function m204a(java.util.function.Function function) {
        if (function == null) {
            return null;
        }
        return function instanceof C2825M ? ((C2825M) function).f1144a : new C2823L(function);
    }

    @Override // p034j$.util.function.Function
    public /* synthetic */ Function andThen(Function function) {
        return m204a(this.f1142a.andThen(C2825M.m202a(function)));
    }

    @Override // p034j$.util.function.Function
    public /* synthetic */ Object apply(Object obj) {
        return this.f1142a.apply(obj);
    }

    @Override // p034j$.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        return m204a(this.f1142a.compose(C2825M.m202a(function)));
    }
}
