package p033j$.wrappers;

import java.util.function.Function;
/* renamed from: j$.wrappers.M */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3246M implements Function {

    /* renamed from: a */
    final /* synthetic */ p033j$.util.function.Function f1239a;

    private /* synthetic */ C3246M(p033j$.util.function.Function function) {
        this.f1239a = function;
    }

    /* renamed from: a */
    public static /* synthetic */ Function m205a(p033j$.util.function.Function function) {
        if (function == null) {
            return null;
        }
        return function instanceof C3244L ? ((C3244L) function).f1237a : new C3246M(function);
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function andThen(Function function) {
        return m205a(this.f1239a.andThen(C3244L.m207a(function)));
    }

    @Override // java.util.function.Function
    public /* synthetic */ Object apply(Object obj) {
        return this.f1239a.apply(obj);
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        return m205a(this.f1239a.compose(C3244L.m207a(function)));
    }
}
