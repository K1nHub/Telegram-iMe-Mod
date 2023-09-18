package p033j$.wrappers;

import java.util.function.IntBinaryOperator;
import p033j$.util.function.InterfaceC2879j;
/* renamed from: j$.wrappers.N */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3248N implements InterfaceC2879j {

    /* renamed from: a */
    final /* synthetic */ IntBinaryOperator f1241a;

    private /* synthetic */ C3248N(IntBinaryOperator intBinaryOperator) {
        this.f1241a = intBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2879j m188a(IntBinaryOperator intBinaryOperator) {
        if (intBinaryOperator == null) {
            return null;
        }
        return intBinaryOperator instanceof C3250O ? ((C3250O) intBinaryOperator).f1243a : new C3248N(intBinaryOperator);
    }

    @Override // p033j$.util.function.InterfaceC2879j
    public /* synthetic */ int applyAsInt(int i, int i2) {
        return this.f1241a.applyAsInt(i, i2);
    }
}
