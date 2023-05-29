package p034j$.wrappers;

import p034j$.util.function.Function;
/* renamed from: j$.wrappers.L */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3068L implements Function {

    /* renamed from: a */
    final /* synthetic */ java.util.function.Function f1151a;

    private /* synthetic */ C3068L(java.util.function.Function function) {
        this.f1151a = function;
    }

    /* renamed from: a */
    public static /* synthetic */ Function m189a(java.util.function.Function function) {
        if (function == null) {
            return null;
        }
        return function instanceof C3070M ? ((C3070M) function).f1153a : new C3068L(function);
    }

    @Override // p034j$.util.function.Function
    public /* synthetic */ Function andThen(Function function) {
        return m189a(this.f1151a.andThen(C3070M.m187a(function)));
    }

    @Override // p034j$.util.function.Function
    public /* synthetic */ Object apply(Object obj) {
        return this.f1151a.apply(obj);
    }

    @Override // p034j$.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        return m189a(this.f1151a.compose(C3070M.m187a(function)));
    }
}
