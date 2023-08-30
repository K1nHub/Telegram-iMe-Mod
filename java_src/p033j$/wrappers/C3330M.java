package p033j$.wrappers;

import java.util.function.Function;
/* renamed from: j$.wrappers.M */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3330M implements Function {

    /* renamed from: a */
    final /* synthetic */ p033j$.util.function.Function f1248a;

    private /* synthetic */ C3330M(p033j$.util.function.Function function) {
        this.f1248a = function;
    }

    /* renamed from: a */
    public static /* synthetic */ Function m205a(p033j$.util.function.Function function) {
        if (function == null) {
            return null;
        }
        return function instanceof C3328L ? ((C3328L) function).f1246a : new C3330M(function);
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function andThen(Function function) {
        return m205a(this.f1248a.andThen(C3328L.m207a(function)));
    }

    @Override // java.util.function.Function
    public /* synthetic */ Object apply(Object obj) {
        return this.f1248a.apply(obj);
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        return m205a(this.f1248a.compose(C3328L.m207a(function)));
    }
}
