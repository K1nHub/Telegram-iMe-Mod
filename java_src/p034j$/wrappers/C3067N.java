package p034j$.wrappers;

import java.util.function.IntBinaryOperator;
import p034j$.util.function.InterfaceC2698j;
/* renamed from: j$.wrappers.N */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3067N implements InterfaceC2698j {

    /* renamed from: a */
    final /* synthetic */ IntBinaryOperator f1155a;

    private /* synthetic */ C3067N(IntBinaryOperator intBinaryOperator) {
        this.f1155a = intBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2698j m170a(IntBinaryOperator intBinaryOperator) {
        if (intBinaryOperator == null) {
            return null;
        }
        return intBinaryOperator instanceof C3069O ? ((C3069O) intBinaryOperator).f1157a : new C3067N(intBinaryOperator);
    }

    @Override // p034j$.util.function.InterfaceC2698j
    public /* synthetic */ int applyAsInt(int i, int i2) {
        return this.f1155a.applyAsInt(i, i2);
    }
}
