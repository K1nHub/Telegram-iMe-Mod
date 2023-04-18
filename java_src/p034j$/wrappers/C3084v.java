package p034j$.wrappers;

import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import p034j$.util.function.InterfaceC2651b;
/* renamed from: j$.wrappers.v */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3084v implements BinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2651b f1208a;

    private /* synthetic */ C3084v(InterfaceC2651b interfaceC2651b) {
        this.f1208a = interfaceC2651b;
    }

    /* renamed from: a */
    public static /* synthetic */ BinaryOperator m91a(InterfaceC2651b interfaceC2651b) {
        if (interfaceC2651b == null) {
            return null;
        }
        return interfaceC2651b instanceof C3082u ? ((C3082u) interfaceC2651b).f1206a : new C3084v(interfaceC2651b);
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return C3080t.m95a(this.f1208a.andThen(C3024L.m184a(function)));
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1208a.apply(obj, obj2);
    }
}
