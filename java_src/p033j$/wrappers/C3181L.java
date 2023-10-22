package p033j$.wrappers;

import java.util.function.IntBinaryOperator;
import p033j$.util.function.InterfaceC2820j;
/* renamed from: j$.wrappers.L */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3181L implements InterfaceC2820j {

    /* renamed from: a */
    final /* synthetic */ IntBinaryOperator f1284a;

    private /* synthetic */ C3181L(IntBinaryOperator intBinaryOperator) {
        this.f1284a = intBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2820j m238a(IntBinaryOperator intBinaryOperator) {
        if (intBinaryOperator == null) {
            return null;
        }
        return intBinaryOperator instanceof C3183M ? ((C3183M) intBinaryOperator).f1286a : new C3181L(intBinaryOperator);
    }

    @Override // p033j$.util.function.InterfaceC2820j
    public /* synthetic */ int applyAsInt(int i, int i2) {
        return this.f1284a.applyAsInt(i, i2);
    }
}
