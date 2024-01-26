package p033j$.wrappers;

import java.util.function.Function;
/* renamed from: j$.wrappers.K */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3178K implements Function {

    /* renamed from: a */
    final /* synthetic */ p033j$.util.function.Function f1282a;

    private /* synthetic */ C3178K(p033j$.util.function.Function function) {
        this.f1282a = function;
    }

    /* renamed from: a */
    public static /* synthetic */ Function m244a(p033j$.util.function.Function function) {
        if (function == null) {
            return null;
        }
        return function instanceof C$r8$wrapper$java$util$function$Function$VWRP ? ((C$r8$wrapper$java$util$function$Function$VWRP) function).f1256a : new C3178K(function);
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function andThen(Function function) {
        return m244a(this.f1282a.andThen(C$r8$wrapper$java$util$function$Function$VWRP.convert(function)));
    }

    @Override // java.util.function.Function
    public /* synthetic */ Object apply(Object obj) {
        return this.f1282a.apply(obj);
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        return m244a(this.f1282a.compose(C$r8$wrapper$java$util$function$Function$VWRP.convert(function)));
    }
}
