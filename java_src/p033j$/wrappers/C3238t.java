package p033j$.wrappers;

import java.util.function.BinaryOperator;
import p033j$.util.function.BiFunction;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2816b;
/* renamed from: j$.wrappers.t */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3238t implements InterfaceC2816b {

    /* renamed from: a */
    final /* synthetic */ BinaryOperator f1337a;

    private /* synthetic */ C3238t(BinaryOperator binaryOperator) {
        this.f1337a = binaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2816b m169a(BinaryOperator binaryOperator) {
        if (binaryOperator == null) {
            return null;
        }
        return binaryOperator instanceof C3240u ? ((C3240u) binaryOperator).f1339a : new C3238t(binaryOperator);
    }

    @Override // p033j$.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return C$r8$wrapper$java$util$function$BiFunction$VWRP.convert(this.f1337a.andThen(C3183K.m241a(function)));
    }

    @Override // p033j$.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1337a.apply(obj, obj2);
    }
}
