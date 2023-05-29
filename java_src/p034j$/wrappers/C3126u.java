package p034j$.wrappers;

import java.util.function.BinaryOperator;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2695b;
/* renamed from: j$.wrappers.u */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3126u implements InterfaceC2695b {

    /* renamed from: a */
    final /* synthetic */ BinaryOperator f1209a;

    private /* synthetic */ C3126u(BinaryOperator binaryOperator) {
        this.f1209a = binaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2695b m98a(BinaryOperator binaryOperator) {
        if (binaryOperator == null) {
            return null;
        }
        return binaryOperator instanceof C3128v ? ((C3128v) binaryOperator).f1211a : new C3126u(binaryOperator);
    }

    @Override // p034j$.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return C3122s.m102a(this.f1209a.andThen(C3070M.m187a(function)));
    }

    @Override // p034j$.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1209a.apply(obj, obj2);
    }
}
