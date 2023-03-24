package p034j$.wrappers;

import java.util.function.Function;
/* renamed from: j$.wrappers.M */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2963M implements Function {

    /* renamed from: a */
    final /* synthetic */ p034j$.util.function.Function f1150a;

    private /* synthetic */ C2963M(p034j$.util.function.Function function) {
        this.f1150a = function;
    }

    /* renamed from: a */
    public static /* synthetic */ Function m201a(p034j$.util.function.Function function) {
        if (function == null) {
            return null;
        }
        return function instanceof C2961L ? ((C2961L) function).f1148a : new C2963M(function);
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function andThen(Function function) {
        return m201a(this.f1150a.andThen(C2961L.m203a(function)));
    }

    @Override // java.util.function.Function
    public /* synthetic */ Object apply(Object obj) {
        return this.f1150a.apply(obj);
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        return m201a(this.f1150a.compose(C2961L.m203a(function)));
    }
}
