package p034j$.wrappers;

import java.util.function.Function;
/* renamed from: j$.wrappers.M */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2949M implements Function {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.function.Function f1149a;

    private /* synthetic */ C2949M(p034j$.util.function.Function function) {
        this.f1149a = function;
    }

    /* renamed from: a */
    public static /* synthetic */ Function m202a(p034j$.util.function.Function function) {
        if (function == null) {
            return null;
        }
        return function instanceof C2947L ? ((C2947L) function).f1147a : new C2949M(function);
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function andThen(Function function) {
        return m202a(this.f1149a.andThen(C2947L.m204a(function)));
    }

    @Override // java.util.function.Function
    public /* synthetic */ Object apply(Object obj) {
        return this.f1149a.apply(obj);
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        return m202a(this.f1149a.compose(C2947L.m204a(function)));
    }
}
