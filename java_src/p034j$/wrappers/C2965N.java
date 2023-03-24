package p034j$.wrappers;

import java.util.function.IntBinaryOperator;
import p034j$.util.function.InterfaceC2596j;
/* renamed from: j$.wrappers.N */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2965N implements InterfaceC2596j {

    /* renamed from: a */
    final /* synthetic */ IntBinaryOperator f1152a;

    private /* synthetic */ C2965N(IntBinaryOperator intBinaryOperator) {
        this.f1152a = intBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2596j m184a(IntBinaryOperator intBinaryOperator) {
        if (intBinaryOperator == null) {
            return null;
        }
        return intBinaryOperator instanceof C2967O ? ((C2967O) intBinaryOperator).f1154a : new C2965N(intBinaryOperator);
    }

    @Override // p034j$.util.function.InterfaceC2596j
    public /* synthetic */ int applyAsInt(int i, int i2) {
        return this.f1152a.applyAsInt(i, i2);
    }
}
