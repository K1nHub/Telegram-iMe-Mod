package p033j$.wrappers;

import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import p033j$.util.function.InterfaceC2813b;
/* renamed from: j$.wrappers.u */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3237u implements BinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2813b f1339a;

    private /* synthetic */ C3237u(InterfaceC2813b interfaceC2813b) {
        this.f1339a = interfaceC2813b;
    }

    /* renamed from: a */
    public static /* synthetic */ BinaryOperator m167a(InterfaceC2813b interfaceC2813b) {
        if (interfaceC2813b == null) {
            return null;
        }
        return interfaceC2813b instanceof C3235t ? ((C3235t) interfaceC2813b).f1337a : new C3237u(interfaceC2813b);
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return C3233s.m171a(this.f1339a.andThen(C$r8$wrapper$java$util$function$Function$VWRP.convert(function)));
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1339a.apply(obj, obj2);
    }
}
