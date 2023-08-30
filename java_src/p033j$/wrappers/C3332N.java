package p033j$.wrappers;

import java.util.function.IntBinaryOperator;
import p033j$.util.function.InterfaceC2963j;
/* renamed from: j$.wrappers.N */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3332N implements InterfaceC2963j {

    /* renamed from: a */
    final /* synthetic */ IntBinaryOperator f1250a;

    private /* synthetic */ C3332N(IntBinaryOperator intBinaryOperator) {
        this.f1250a = intBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2963j m188a(IntBinaryOperator intBinaryOperator) {
        if (intBinaryOperator == null) {
            return null;
        }
        return intBinaryOperator instanceof C3334O ? ((C3334O) intBinaryOperator).f1252a : new C3332N(intBinaryOperator);
    }

    @Override // p033j$.util.function.InterfaceC2963j
    public /* synthetic */ int applyAsInt(int i, int i2) {
        return this.f1250a.applyAsInt(i, i2);
    }
}
