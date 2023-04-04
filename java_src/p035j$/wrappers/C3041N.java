package p035j$.wrappers;

import java.util.function.IntBinaryOperator;
import p035j$.util.function.InterfaceC2672j;
/* renamed from: j$.wrappers.N */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3041N implements InterfaceC2672j {

    /* renamed from: a */
    final /* synthetic */ IntBinaryOperator f1157a;

    private /* synthetic */ C3041N(IntBinaryOperator intBinaryOperator) {
        this.f1157a = intBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2672j m179a(IntBinaryOperator intBinaryOperator) {
        if (intBinaryOperator == null) {
            return null;
        }
        return intBinaryOperator instanceof C3043O ? ((C3043O) intBinaryOperator).f1159a : new C3041N(intBinaryOperator);
    }

    @Override // p035j$.util.function.InterfaceC2672j
    public /* synthetic */ int applyAsInt(int i, int i2) {
        return this.f1157a.applyAsInt(i, i2);
    }
}
