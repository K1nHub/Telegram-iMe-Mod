package p034j$.wrappers;

import java.util.function.IntBinaryOperator;
import p034j$.util.function.InterfaceC2458j;
/* renamed from: j$.wrappers.N */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2827N implements InterfaceC2458j {

    /* renamed from: a */
    final /* synthetic */ IntBinaryOperator f1146a;

    private /* synthetic */ C2827N(IntBinaryOperator intBinaryOperator) {
        this.f1146a = intBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2458j m185a(IntBinaryOperator intBinaryOperator) {
        if (intBinaryOperator == null) {
            return null;
        }
        return intBinaryOperator instanceof C2829O ? ((C2829O) intBinaryOperator).f1148a : new C2827N(intBinaryOperator);
    }

    @Override // p034j$.util.function.InterfaceC2458j
    public /* synthetic */ int applyAsInt(int i, int i2) {
        return this.f1146a.applyAsInt(i, i2);
    }
}
