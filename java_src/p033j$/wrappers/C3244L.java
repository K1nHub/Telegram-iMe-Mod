package p033j$.wrappers;

import p033j$.util.function.Function;
/* renamed from: j$.wrappers.L */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3244L implements Function {

    /* renamed from: a */
    final /* synthetic */ java.util.function.Function f1237a;

    private /* synthetic */ C3244L(java.util.function.Function function) {
        this.f1237a = function;
    }

    /* renamed from: a */
    public static /* synthetic */ Function m207a(java.util.function.Function function) {
        if (function == null) {
            return null;
        }
        return function instanceof C3246M ? ((C3246M) function).f1239a : new C3244L(function);
    }

    @Override // p033j$.util.function.Function
    public /* synthetic */ Function andThen(Function function) {
        return m207a(this.f1237a.andThen(C3246M.m205a(function)));
    }

    @Override // p033j$.util.function.Function
    public /* synthetic */ Object apply(Object obj) {
        return this.f1237a.apply(obj);
    }

    @Override // p033j$.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        return m207a(this.f1237a.compose(C3246M.m205a(function)));
    }
}
