package p033j$.wrappers;

import java.util.function.IntBinaryOperator;
import p033j$.util.function.InterfaceC2819j;
/* renamed from: j$.wrappers.L */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3180L implements InterfaceC2819j {

    /* renamed from: a */
    final /* synthetic */ IntBinaryOperator f1284a;

    private /* synthetic */ C3180L(IntBinaryOperator intBinaryOperator) {
        this.f1284a = intBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2819j m242a(IntBinaryOperator intBinaryOperator) {
        if (intBinaryOperator == null) {
            return null;
        }
        return intBinaryOperator instanceof C3182M ? ((C3182M) intBinaryOperator).f1286a : new C3180L(intBinaryOperator);
    }

    @Override // p033j$.util.function.InterfaceC2819j
    public /* synthetic */ int applyAsInt(int i, int i2) {
        return this.f1284a.applyAsInt(i, i2);
    }
}
