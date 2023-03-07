package p034j$.wrappers;

import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import p034j$.util.function.InterfaceC2450b;
/* renamed from: j$.wrappers.v */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2883v implements BinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2450b f1202a;

    private /* synthetic */ C2883v(InterfaceC2450b interfaceC2450b) {
        this.f1202a = interfaceC2450b;
    }

    /* renamed from: a */
    public static /* synthetic */ BinaryOperator m111a(InterfaceC2450b interfaceC2450b) {
        if (interfaceC2450b == null) {
            return null;
        }
        return interfaceC2450b instanceof C2881u ? ((C2881u) interfaceC2450b).f1200a : new C2883v(interfaceC2450b);
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return C2879t.m115a(this.f1202a.andThen(C2823L.m204a(function)));
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1202a.apply(obj, obj2);
    }
}
