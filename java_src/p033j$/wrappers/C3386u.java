package p033j$.wrappers;

import java.util.function.BinaryOperator;
import p033j$.util.function.BiFunction;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2955b;
/* renamed from: j$.wrappers.u */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3386u implements InterfaceC2955b {

    /* renamed from: a */
    final /* synthetic */ BinaryOperator f1304a;

    private /* synthetic */ C3386u(BinaryOperator binaryOperator) {
        this.f1304a = binaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2955b m116a(BinaryOperator binaryOperator) {
        if (binaryOperator == null) {
            return null;
        }
        return binaryOperator instanceof C3388v ? ((C3388v) binaryOperator).f1306a : new C3386u(binaryOperator);
    }

    @Override // p033j$.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return C3382s.m120a(this.f1304a.andThen(C3330M.m205a(function)));
    }

    @Override // p033j$.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1304a.apply(obj, obj2);
    }
}
