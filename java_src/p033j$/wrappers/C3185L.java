package p033j$.wrappers;

import java.util.function.IntBinaryOperator;
import p033j$.util.function.InterfaceC2824j;
/* renamed from: j$.wrappers.L */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3185L implements InterfaceC2824j {

    /* renamed from: a */
    final /* synthetic */ IntBinaryOperator f1284a;

    private /* synthetic */ C3185L(IntBinaryOperator intBinaryOperator) {
        this.f1284a = intBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2824j m239a(IntBinaryOperator intBinaryOperator) {
        if (intBinaryOperator == null) {
            return null;
        }
        return intBinaryOperator instanceof C3187M ? ((C3187M) intBinaryOperator).f1286a : new C3185L(intBinaryOperator);
    }

    @Override // p033j$.util.function.InterfaceC2824j
    public /* synthetic */ int applyAsInt(int i, int i2) {
        return this.f1284a.applyAsInt(i, i2);
    }
}
