package p034j$.wrappers;

import java.util.function.IntBinaryOperator;
import p034j$.util.function.InterfaceC2703j;
/* renamed from: j$.wrappers.N */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3072N implements InterfaceC2703j {

    /* renamed from: a */
    final /* synthetic */ IntBinaryOperator f1155a;

    private /* synthetic */ C3072N(IntBinaryOperator intBinaryOperator) {
        this.f1155a = intBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2703j m170a(IntBinaryOperator intBinaryOperator) {
        if (intBinaryOperator == null) {
            return null;
        }
        return intBinaryOperator instanceof C3074O ? ((C3074O) intBinaryOperator).f1157a : new C3072N(intBinaryOperator);
    }

    @Override // p034j$.util.function.InterfaceC2703j
    public /* synthetic */ int applyAsInt(int i, int i2) {
        return this.f1155a.applyAsInt(i, i2);
    }
}
