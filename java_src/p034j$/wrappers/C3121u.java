package p034j$.wrappers;

import java.util.function.BinaryOperator;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2690b;
/* renamed from: j$.wrappers.u */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3121u implements InterfaceC2690b {

    /* renamed from: a */
    final /* synthetic */ BinaryOperator f1209a;

    private /* synthetic */ C3121u(BinaryOperator binaryOperator) {
        this.f1209a = binaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2690b m98a(BinaryOperator binaryOperator) {
        if (binaryOperator == null) {
            return null;
        }
        return binaryOperator instanceof C3123v ? ((C3123v) binaryOperator).f1211a : new C3121u(binaryOperator);
    }

    @Override // p034j$.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return C3117s.m102a(this.f1209a.andThen(C3065M.m187a(function)));
    }

    @Override // p034j$.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1209a.apply(obj, obj2);
    }
}
