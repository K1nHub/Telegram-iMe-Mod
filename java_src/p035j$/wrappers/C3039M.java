package p035j$.wrappers;

import java.util.function.Function;
/* renamed from: j$.wrappers.M */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3039M implements Function {

    /* renamed from: a */
    final /* synthetic */ p035j$.util.function.Function f1155a;

    private /* synthetic */ C3039M(p035j$.util.function.Function function) {
        this.f1155a = function;
    }

    /* renamed from: a */
    public static /* synthetic */ Function m196a(p035j$.util.function.Function function) {
        if (function == null) {
            return null;
        }
        return function instanceof C3037L ? ((C3037L) function).f1153a : new C3039M(function);
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function andThen(Function function) {
        return m196a(this.f1155a.andThen(C3037L.m198a(function)));
    }

    @Override // java.util.function.Function
    public /* synthetic */ Object apply(Object obj) {
        return this.f1155a.apply(obj);
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        return m196a(this.f1155a.compose(C3037L.m198a(function)));
    }
}
