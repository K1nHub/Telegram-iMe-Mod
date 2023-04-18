package p034j$.wrappers;

import p034j$.util.function.Function;
/* renamed from: j$.wrappers.L */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3024L implements Function {

    /* renamed from: a */
    final /* synthetic */ java.util.function.Function f1148a;

    private /* synthetic */ C3024L(java.util.function.Function function) {
        this.f1148a = function;
    }

    /* renamed from: a */
    public static /* synthetic */ Function m184a(java.util.function.Function function) {
        if (function == null) {
            return null;
        }
        return function instanceof C3026M ? ((C3026M) function).f1150a : new C3024L(function);
    }

    @Override // p034j$.util.function.Function
    public /* synthetic */ Function andThen(Function function) {
        return m184a(this.f1148a.andThen(C3026M.m182a(function)));
    }

    @Override // p034j$.util.function.Function
    public /* synthetic */ Object apply(Object obj) {
        return this.f1148a.apply(obj);
    }

    @Override // p034j$.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        return m184a(this.f1148a.compose(C3026M.m182a(function)));
    }
}
