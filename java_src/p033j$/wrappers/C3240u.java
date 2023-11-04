package p033j$.wrappers;

import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import p033j$.util.function.InterfaceC2816b;
/* renamed from: j$.wrappers.u */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3240u implements BinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2816b f1339a;

    private /* synthetic */ C3240u(InterfaceC2816b interfaceC2816b) {
        this.f1339a = interfaceC2816b;
    }

    /* renamed from: a */
    public static /* synthetic */ BinaryOperator m167a(InterfaceC2816b interfaceC2816b) {
        if (interfaceC2816b == null) {
            return null;
        }
        return interfaceC2816b instanceof C3238t ? ((C3238t) interfaceC2816b).f1337a : new C3240u(interfaceC2816b);
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return C3236s.m171a(this.f1339a.andThen(C$r8$wrapper$java$util$function$Function$VWRP.convert(function)));
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1339a.apply(obj, obj2);
    }
}
