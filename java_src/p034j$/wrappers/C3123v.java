package p034j$.wrappers;

import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import p034j$.util.function.InterfaceC2690b;
/* renamed from: j$.wrappers.v */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3123v implements BinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2690b f1211a;

    private /* synthetic */ C3123v(InterfaceC2690b interfaceC2690b) {
        this.f1211a = interfaceC2690b;
    }

    /* renamed from: a */
    public static /* synthetic */ BinaryOperator m96a(InterfaceC2690b interfaceC2690b) {
        if (interfaceC2690b == null) {
            return null;
        }
        return interfaceC2690b instanceof C3121u ? ((C3121u) interfaceC2690b).f1209a : new C3123v(interfaceC2690b);
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return C3119t.m100a(this.f1211a.andThen(C3063L.m189a(function)));
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1211a.apply(obj, obj2);
    }
}
