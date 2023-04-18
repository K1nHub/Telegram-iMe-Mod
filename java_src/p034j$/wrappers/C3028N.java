package p034j$.wrappers;

import java.util.function.IntBinaryOperator;
import p034j$.util.function.InterfaceC2659j;
/* renamed from: j$.wrappers.N */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3028N implements InterfaceC2659j {

    /* renamed from: a */
    final /* synthetic */ IntBinaryOperator f1152a;

    private /* synthetic */ C3028N(IntBinaryOperator intBinaryOperator) {
        this.f1152a = intBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2659j m165a(IntBinaryOperator intBinaryOperator) {
        if (intBinaryOperator == null) {
            return null;
        }
        return intBinaryOperator instanceof C3030O ? ((C3030O) intBinaryOperator).f1154a : new C3028N(intBinaryOperator);
    }

    @Override // p034j$.util.function.InterfaceC2659j
    public /* synthetic */ int applyAsInt(int i, int i2) {
        return this.f1152a.applyAsInt(i, i2);
    }
}
