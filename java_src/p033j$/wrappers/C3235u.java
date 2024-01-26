package p033j$.wrappers;

import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import p033j$.util.function.InterfaceC2811b;
/* renamed from: j$.wrappers.u */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3235u implements BinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2811b f1339a;

    private /* synthetic */ C3235u(InterfaceC2811b interfaceC2811b) {
        this.f1339a = interfaceC2811b;
    }

    /* renamed from: a */
    public static /* synthetic */ BinaryOperator m170a(InterfaceC2811b interfaceC2811b) {
        if (interfaceC2811b == null) {
            return null;
        }
        return interfaceC2811b instanceof C3233t ? ((C3233t) interfaceC2811b).f1337a : new C3235u(interfaceC2811b);
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return C3231s.m174a(this.f1339a.andThen(C$r8$wrapper$java$util$function$Function$VWRP.convert(function)));
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1339a.apply(obj, obj2);
    }
}
