package p034j$.wrappers;

import java.util.function.BinaryOperator;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2574b;
/* renamed from: j$.wrappers.u */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3005u implements InterfaceC2574b {

    /* renamed from: a */
    final /* synthetic */ BinaryOperator f1205a;

    private /* synthetic */ C3005u(BinaryOperator binaryOperator) {
        this.f1205a = binaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2574b m113a(BinaryOperator binaryOperator) {
        if (binaryOperator == null) {
            return null;
        }
        return binaryOperator instanceof C3007v ? ((C3007v) binaryOperator).f1207a : new C3005u(binaryOperator);
    }

    @Override // p034j$.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return C3001s.m117a(this.f1205a.andThen(C2949M.m202a(function)));
    }

    @Override // p034j$.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1205a.apply(obj, obj2);
    }
}
