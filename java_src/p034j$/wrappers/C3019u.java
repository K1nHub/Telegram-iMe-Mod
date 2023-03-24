package p034j$.wrappers;

import java.util.function.BinaryOperator;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2588b;
/* renamed from: j$.wrappers.u */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3019u implements InterfaceC2588b {

    /* renamed from: a */
    final /* synthetic */ BinaryOperator f1206a;

    private /* synthetic */ C3019u(BinaryOperator binaryOperator) {
        this.f1206a = binaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2588b m112a(BinaryOperator binaryOperator) {
        if (binaryOperator == null) {
            return null;
        }
        return binaryOperator instanceof C3021v ? ((C3021v) binaryOperator).f1208a : new C3019u(binaryOperator);
    }

    @Override // p034j$.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return C3015s.m116a(this.f1206a.andThen(C2963M.m201a(function)));
    }

    @Override // p034j$.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1206a.apply(obj, obj2);
    }
}
