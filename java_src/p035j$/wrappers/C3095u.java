package p035j$.wrappers;

import java.util.function.BinaryOperator;
import p035j$.util.function.BiFunction;
import p035j$.util.function.Function;
import p035j$.util.function.InterfaceC2664b;
/* renamed from: j$.wrappers.u */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3095u implements InterfaceC2664b {

    /* renamed from: a */
    final /* synthetic */ BinaryOperator f1211a;

    private /* synthetic */ C3095u(BinaryOperator binaryOperator) {
        this.f1211a = binaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2664b m107a(BinaryOperator binaryOperator) {
        if (binaryOperator == null) {
            return null;
        }
        return binaryOperator instanceof C3097v ? ((C3097v) binaryOperator).f1213a : new C3095u(binaryOperator);
    }

    @Override // p035j$.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return C3091s.m111a(this.f1211a.andThen(C3039M.m196a(function)));
    }

    @Override // p035j$.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1211a.apply(obj, obj2);
    }
}
