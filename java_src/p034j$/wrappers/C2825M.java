package p034j$.wrappers;

import java.util.function.Function;
/* renamed from: j$.wrappers.M */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2825M implements Function {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.function.Function f1144a;

    private /* synthetic */ C2825M(p034j$.util.function.Function function) {
        this.f1144a = function;
    }

    /* renamed from: a */
    public static /* synthetic */ Function m202a(p034j$.util.function.Function function) {
        if (function == null) {
            return null;
        }
        return function instanceof C2823L ? ((C2823L) function).f1142a : new C2825M(function);
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function andThen(Function function) {
        return m202a(this.f1144a.andThen(C2823L.m204a(function)));
    }

    @Override // java.util.function.Function
    public /* synthetic */ Object apply(Object obj) {
        return this.f1144a.apply(obj);
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        return m202a(this.f1144a.compose(C2823L.m204a(function)));
    }
}
