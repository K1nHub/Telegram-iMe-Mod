package p035j$.wrappers;

import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import p035j$.util.function.InterfaceC2664b;
/* renamed from: j$.wrappers.v */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3097v implements BinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2664b f1213a;

    private /* synthetic */ C3097v(InterfaceC2664b interfaceC2664b) {
        this.f1213a = interfaceC2664b;
    }

    /* renamed from: a */
    public static /* synthetic */ BinaryOperator m105a(InterfaceC2664b interfaceC2664b) {
        if (interfaceC2664b == null) {
            return null;
        }
        return interfaceC2664b instanceof C3095u ? ((C3095u) interfaceC2664b).f1211a : new C3097v(interfaceC2664b);
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return C3093t.m109a(this.f1213a.andThen(C3037L.m198a(function)));
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1213a.apply(obj, obj2);
    }
}
