package p034j$.wrappers;

import java.util.function.Function;
/* renamed from: j$.wrappers.M */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3026M implements Function {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.function.Function f1150a;

    private /* synthetic */ C3026M(p034j$.util.function.Function function) {
        this.f1150a = function;
    }

    /* renamed from: a */
    public static /* synthetic */ Function m182a(p034j$.util.function.Function function) {
        if (function == null) {
            return null;
        }
        return function instanceof C3024L ? ((C3024L) function).f1148a : new C3026M(function);
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function andThen(Function function) {
        return m182a(this.f1150a.andThen(C3024L.m184a(function)));
    }

    @Override // java.util.function.Function
    public /* synthetic */ Object apply(Object obj) {
        return this.f1150a.apply(obj);
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        return m182a(this.f1150a.compose(C3024L.m184a(function)));
    }
}
