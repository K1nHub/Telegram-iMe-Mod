package p033j$.wrappers;

import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import p033j$.util.function.InterfaceC2955b;
/* renamed from: j$.wrappers.v */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3388v implements BinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2955b f1306a;

    private /* synthetic */ C3388v(InterfaceC2955b interfaceC2955b) {
        this.f1306a = interfaceC2955b;
    }

    /* renamed from: a */
    public static /* synthetic */ BinaryOperator m114a(InterfaceC2955b interfaceC2955b) {
        if (interfaceC2955b == null) {
            return null;
        }
        return interfaceC2955b instanceof C3386u ? ((C3386u) interfaceC2955b).f1304a : new C3388v(interfaceC2955b);
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return C3384t.m118a(this.f1306a.andThen(C3328L.m207a(function)));
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1306a.apply(obj, obj2);
    }
}
