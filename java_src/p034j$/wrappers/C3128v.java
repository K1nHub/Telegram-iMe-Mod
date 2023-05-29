package p034j$.wrappers;

import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import p034j$.util.function.InterfaceC2695b;
/* renamed from: j$.wrappers.v */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3128v implements BinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2695b f1211a;

    private /* synthetic */ C3128v(InterfaceC2695b interfaceC2695b) {
        this.f1211a = interfaceC2695b;
    }

    /* renamed from: a */
    public static /* synthetic */ BinaryOperator m96a(InterfaceC2695b interfaceC2695b) {
        if (interfaceC2695b == null) {
            return null;
        }
        return interfaceC2695b instanceof C3126u ? ((C3126u) interfaceC2695b).f1209a : new C3128v(interfaceC2695b);
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return C3124t.m100a(this.f1211a.andThen(C3068L.m189a(function)));
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1211a.apply(obj, obj2);
    }
}
