package p034j$.wrappers;

import java.util.function.IntBinaryOperator;
import p034j$.util.function.InterfaceC2582j;
/* renamed from: j$.wrappers.N */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2951N implements InterfaceC2582j {

    /* renamed from: a */
    final /* synthetic */ IntBinaryOperator f1151a;

    private /* synthetic */ C2951N(IntBinaryOperator intBinaryOperator) {
        this.f1151a = intBinaryOperator;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2582j m185a(IntBinaryOperator intBinaryOperator) {
        if (intBinaryOperator == null) {
            return null;
        }
        return intBinaryOperator instanceof C2953O ? ((C2953O) intBinaryOperator).f1153a : new C2951N(intBinaryOperator);
    }

    @Override // p034j$.util.function.InterfaceC2582j
    public /* synthetic */ int applyAsInt(int i, int i2) {
        return this.f1151a.applyAsInt(i, i2);
    }
}
