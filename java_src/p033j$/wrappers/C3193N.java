package p033j$.wrappers;

import java.util.function.IntBinaryOperator;
import p033j$.util.function.InterfaceC2824j;
/* renamed from: j$.wrappers.N */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3193N implements InterfaceC2824j {

    /* renamed from: a */
    final /* synthetic */ IntBinaryOperator f1237a;

    private /* synthetic */ C3193N(IntBinaryOperator intBinaryOperator) {
        this.f1237a = intBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2824j m170a(IntBinaryOperator intBinaryOperator) {
        if (intBinaryOperator == null) {
            return null;
        }
        return intBinaryOperator instanceof C3195O ? ((C3195O) intBinaryOperator).f1239a : new C3193N(intBinaryOperator);
    }

    @Override // p033j$.util.function.InterfaceC2824j
    public /* synthetic */ int applyAsInt(int i, int i2) {
        return this.f1237a.applyAsInt(i, i2);
    }
}
