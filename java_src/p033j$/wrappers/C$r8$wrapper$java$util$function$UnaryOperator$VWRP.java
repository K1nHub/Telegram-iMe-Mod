package p033j$.wrappers;

import p033j$.util.function.Function;
import p033j$.util.function.UnaryOperator;
/* renamed from: j$.wrappers.$r8$wrapper$java$util$function$UnaryOperator$-V-WRP  reason: invalid class name */
/* loaded from: classes2.dex */
public final /* synthetic */ class C$r8$wrapper$java$util$function$UnaryOperator$VWRP implements UnaryOperator {

    /* renamed from: a */
    final /* synthetic */ java.util.function.UnaryOperator f1258a;

    private /* synthetic */ C$r8$wrapper$java$util$function$UnaryOperator$VWRP(java.util.function.UnaryOperator unaryOperator) {
        this.f1258a = unaryOperator;
    }

    public static /* synthetic */ UnaryOperator convert(java.util.function.UnaryOperator unaryOperator) {
        if (unaryOperator == null) {
            return null;
        }
        return new C$r8$wrapper$java$util$function$UnaryOperator$VWRP(unaryOperator);
    }

    @Override // p033j$.util.function.Function
    public /* synthetic */ Function andThen(Function function) {
        return C$r8$wrapper$java$util$function$Function$VWRP.convert(this.f1258a.andThen(C3180K.m241a(function)));
    }

    @Override // p033j$.util.function.Function
    public /* synthetic */ Object apply(Object obj) {
        return this.f1258a.apply(obj);
    }

    @Override // p033j$.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        return C$r8$wrapper$java$util$function$Function$VWRP.convert(this.f1258a.compose(C3180K.m241a(function)));
    }
}
