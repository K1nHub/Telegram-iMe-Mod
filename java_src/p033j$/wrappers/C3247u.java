package p033j$.wrappers;

import java.util.function.BinaryOperator;
import p033j$.util.function.BiFunction;
import p033j$.util.function.Function;
import p033j$.util.function.InterfaceC2816b;
/* renamed from: j$.wrappers.u */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3247u implements InterfaceC2816b {

    /* renamed from: a */
    final /* synthetic */ BinaryOperator f1291a;

    private /* synthetic */ C3247u(BinaryOperator binaryOperator) {
        this.f1291a = binaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2816b m98a(BinaryOperator binaryOperator) {
        if (binaryOperator == null) {
            return null;
        }
        return binaryOperator instanceof C3249v ? ((C3249v) binaryOperator).f1293a : new C3247u(binaryOperator);
    }

    @Override // p033j$.util.function.BiFunction
    public /* synthetic */ BiFunction andThen(Function function) {
        return C3243s.m102a(this.f1291a.andThen(C3191M.m187a(function)));
    }

    @Override // p033j$.util.function.BiFunction
    public /* synthetic */ Object apply(Object obj, Object obj2) {
        return this.f1291a.apply(obj, obj2);
    }
}
