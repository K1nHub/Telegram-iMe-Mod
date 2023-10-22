package p033j$.wrappers;

import p033j$.util.function.Function;
/* renamed from: j$.wrappers.$r8$wrapper$java$util$function$Function$-V-WRP  reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$function$Function$VWRP implements Function {

    /* renamed from: a */
    final /* synthetic */ java.util.function.Function f1256a;

    private /* synthetic */ C$r8$wrapper$java$util$function$Function$VWRP(java.util.function.Function function) {
        this.f1256a = function;
    }

    public static /* synthetic */ Function convert(java.util.function.Function function) {
        if (function == null) {
            return null;
        }
        return function instanceof C3179K ? ((C3179K) function).f1282a : new C$r8$wrapper$java$util$function$Function$VWRP(function);
    }

    @Override // p033j$.util.function.Function
    public /* synthetic */ Function andThen(Function function) {
        return convert(this.f1256a.andThen(C3179K.m240a(function)));
    }

    @Override // p033j$.util.function.Function
    public /* synthetic */ Object apply(Object obj) {
        return this.f1256a.apply(obj);
    }

    @Override // p033j$.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        return convert(this.f1256a.compose(C3179K.m240a(function)));
    }
}
