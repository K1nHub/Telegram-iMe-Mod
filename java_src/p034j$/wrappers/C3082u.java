package p034j$.wrappers;

import java.util.function.BinaryOperator;
import p034j$.util.function.BiFunction;
import p034j$.util.function.Function;
import p034j$.util.function.InterfaceC2651b;
/* renamed from: j$.wrappers.u */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3082u implements InterfaceC2651b {

    /* renamed from: a */
    final /* synthetic */ BinaryOperator f1206a;

    private /* synthetic */ C3082u(BinaryOperator binaryOperator) {
        this.f1206a = binaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2651b m93a(BinaryOperator binaryOperator) {
        if (binaryOperator == null) {
            return null;
        }
        return binaryOperator instanceof C3084v ? ((C3084v) binaryOperator).f1208a : new C3082u(binaryOperator);
    }

    @Override // p034j$.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return C3078s.m97a(this.f1206a.andThen(C3026M.m182a(function)));
    }

    @Override // p034j$.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1206a.apply(obj, obj2);
    }
}
