package p034j$.wrappers;

import java.util.function.BinaryOperator;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2450b;
/* renamed from: j$.wrappers.u */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2881u implements InterfaceC2450b {

    /* renamed from: a */
    final /* synthetic */ BinaryOperator f1200a;

    private /* synthetic */ C2881u(BinaryOperator binaryOperator) {
        this.f1200a = binaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2450b m113a(BinaryOperator binaryOperator) {
        if (binaryOperator == null) {
            return null;
        }
        return binaryOperator instanceof C2883v ? ((C2883v) binaryOperator).f1202a : new C2881u(binaryOperator);
    }

    @Override // p034j$.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return C2877s.m117a(this.f1200a.andThen(C2825M.m202a(function)));
    }

    @Override // p034j$.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1200a.apply(obj, obj2);
    }
}
