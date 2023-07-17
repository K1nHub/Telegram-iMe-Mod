package p033j$.wrappers;

import java.util.function.Function;
/* renamed from: j$.wrappers.M */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3191M implements Function {

    /* renamed from: a */
    final /* synthetic */ p033j$.util.function.Function f1235a;

    private /* synthetic */ C3191M(p033j$.util.function.Function function) {
        this.f1235a = function;
    }

    /* renamed from: a */
    public static /* synthetic */ Function m187a(p033j$.util.function.Function function) {
        if (function == null) {
            return null;
        }
        return function instanceof C3189L ? ((C3189L) function).f1233a : new C3191M(function);
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function andThen(Function function) {
        return m187a(this.f1235a.andThen(C3189L.m189a(function)));
    }

    @Override // java.util.function.Function
    public /* synthetic */ Object apply(Object obj) {
        return this.f1235a.apply(obj);
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        return m187a(this.f1235a.compose(C3189L.m189a(function)));
    }
}
