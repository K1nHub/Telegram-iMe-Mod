package p033j$.wrappers;

import p033j$.util.function.Function;
/* renamed from: j$.wrappers.L */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3189L implements Function {

    /* renamed from: a */
    final /* synthetic */ java.util.function.Function f1233a;

    private /* synthetic */ C3189L(java.util.function.Function function) {
        this.f1233a = function;
    }

    /* renamed from: a */
    public static /* synthetic */ Function m189a(java.util.function.Function function) {
        if (function == null) {
            return null;
        }
        return function instanceof C3191M ? ((C3191M) function).f1235a : new C3189L(function);
    }

    @Override // p033j$.util.function.Function
    public /* synthetic */ Function andThen(Function function) {
        return m189a(this.f1233a.andThen(C3191M.m187a(function)));
    }

    @Override // p033j$.util.function.Function
    public /* synthetic */ Object apply(Object obj) {
        return this.f1233a.apply(obj);
    }

    @Override // p033j$.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        return m189a(this.f1233a.compose(C3191M.m187a(function)));
    }
}
