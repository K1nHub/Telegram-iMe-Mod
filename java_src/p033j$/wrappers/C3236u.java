package p033j$.wrappers;

import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import p033j$.util.function.InterfaceC2812b;
/* renamed from: j$.wrappers.u */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3236u implements BinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2812b f1339a;

    private /* synthetic */ C3236u(InterfaceC2812b interfaceC2812b) {
        this.f1339a = interfaceC2812b;
    }

    /* renamed from: a */
    public static /* synthetic */ BinaryOperator m165a(InterfaceC2812b interfaceC2812b) {
        if (interfaceC2812b == null) {
            return null;
        }
        return interfaceC2812b instanceof C3234t ? ((C3234t) interfaceC2812b).f1337a : new C3236u(interfaceC2812b);
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return C3232s.m169a(this.f1339a.andThen(C$r8$wrapper$java$util$function$Function$VWRP.convert(function)));
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1339a.apply(obj, obj2);
    }
}
