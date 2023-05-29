package p034j$.wrappers;

import java.util.function.Function;
/* renamed from: j$.wrappers.M */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3070M implements Function {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.function.Function f1153a;

    private /* synthetic */ C3070M(p034j$.util.function.Function function) {
        this.f1153a = function;
    }

    /* renamed from: a */
    public static /* synthetic */ Function m187a(p034j$.util.function.Function function) {
        if (function == null) {
            return null;
        }
        return function instanceof C3068L ? ((C3068L) function).f1151a : new C3070M(function);
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function andThen(Function function) {
        return m187a(this.f1153a.andThen(C3068L.m189a(function)));
    }

    @Override // java.util.function.Function
    public /* synthetic */ Object apply(Object obj) {
        return this.f1153a.apply(obj);
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        return m187a(this.f1153a.compose(C3068L.m189a(function)));
    }
}
