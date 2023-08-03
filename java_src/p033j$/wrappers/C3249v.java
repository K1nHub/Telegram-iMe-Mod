package p033j$.wrappers;

import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import p033j$.util.function.InterfaceC2816b;
/* renamed from: j$.wrappers.v */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3249v implements BinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2816b f1296a;

    private /* synthetic */ C3249v(InterfaceC2816b interfaceC2816b) {
        this.f1296a = interfaceC2816b;
    }

    /* renamed from: a */
    public static /* synthetic */ BinaryOperator m114a(InterfaceC2816b interfaceC2816b) {
        if (interfaceC2816b == null) {
            return null;
        }
        return interfaceC2816b instanceof C3247u ? ((C3247u) interfaceC2816b).f1294a : new C3249v(interfaceC2816b);
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return C3245t.m118a(this.f1296a.andThen(C3189L.m207a(function)));
    }

    @Override // java.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1296a.apply(obj, obj2);
    }
}
