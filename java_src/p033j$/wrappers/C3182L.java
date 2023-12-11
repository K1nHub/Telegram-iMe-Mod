package p033j$.wrappers;

import java.util.function.IntBinaryOperator;
import p033j$.util.function.InterfaceC2821j;
/* renamed from: j$.wrappers.L */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3182L implements InterfaceC2821j {

    /* renamed from: a */
    final /* synthetic */ IntBinaryOperator f1284a;

    private /* synthetic */ C3182L(IntBinaryOperator intBinaryOperator) {
        this.f1284a = intBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2821j m239a(IntBinaryOperator intBinaryOperator) {
        if (intBinaryOperator == null) {
            return null;
        }
        return intBinaryOperator instanceof C3184M ? ((C3184M) intBinaryOperator).f1286a : new C3182L(intBinaryOperator);
    }

    @Override // p033j$.util.function.InterfaceC2821j
    public /* synthetic */ int applyAsInt(int i, int i2) {
        return this.f1284a.applyAsInt(i, i2);
    }
}
