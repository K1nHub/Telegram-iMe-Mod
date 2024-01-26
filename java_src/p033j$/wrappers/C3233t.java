package p033j$.wrappers;

import java.util.function.BinaryOperator;
import p033j$.util.function.BiFunction;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2811b;
/* renamed from: j$.wrappers.t */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3233t implements InterfaceC2811b {

    /* renamed from: a */
    final /* synthetic */ BinaryOperator f1337a;

    private /* synthetic */ C3233t(BinaryOperator binaryOperator) {
        this.f1337a = binaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2811b m172a(BinaryOperator binaryOperator) {
        if (binaryOperator == null) {
            return null;
        }
        return binaryOperator instanceof C3235u ? ((C3235u) binaryOperator).f1339a : new C3233t(binaryOperator);
    }

    @Override // p033j$.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return C$r8$wrapper$java$util$function$BiFunction$VWRP.convert(this.f1337a.andThen(C3178K.m244a(function)));
    }

    @Override // p033j$.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1337a.apply(obj, obj2);
    }
}
