package p034j$.wrappers;

import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import p034j$.util.function.InterfaceC2588b;
/* renamed from: j$.wrappers.v */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3021v implements BinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2588b f1208a;

    private /* synthetic */ C3021v(InterfaceC2588b interfaceC2588b) {
        this.f1208a = interfaceC2588b;
    }

    /* renamed from: a */
    public static /* synthetic */ BinaryOperator m110a(InterfaceC2588b interfaceC2588b) {
        if (interfaceC2588b == null) {
            return null;
        }
        return interfaceC2588b instanceof C3019u ? ((C3019u) interfaceC2588b).f1206a : new C3021v(interfaceC2588b);
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return C3017t.m114a(this.f1208a.andThen(C2961L.m203a(function)));
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1208a.apply(obj, obj2);
    }
}
