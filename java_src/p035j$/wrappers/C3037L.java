package p035j$.wrappers;

import p035j$.util.function.Function;
/* renamed from: j$.wrappers.L */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3037L implements Function {

    /* renamed from: a */
    final /* synthetic */ java.util.function.Function f1153a;

    private /* synthetic */ C3037L(java.util.function.Function function) {
        this.f1153a = function;
    }

    /* renamed from: a */
    public static /* synthetic */ Function m198a(java.util.function.Function function) {
        if (function == null) {
            return null;
        }
        return function instanceof C3039M ? ((C3039M) function).f1155a : new C3037L(function);
    }

    @Override // p035j$.util.function.Function
    public /* synthetic */ Function andThen(Function function) {
        return m198a(this.f1153a.andThen(C3039M.m196a(function)));
    }

    @Override // p035j$.util.function.Function
    public /* synthetic */ Object apply(Object obj) {
        return this.f1153a.apply(obj);
    }

    @Override // p035j$.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        return m198a(this.f1153a.compose(C3039M.m196a(function)));
    }
}
