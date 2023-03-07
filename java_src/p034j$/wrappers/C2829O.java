package p034j$.wrappers;

import java.util.function.IntBinaryOperator;
import p034j$.util.function.InterfaceC2458j;
/* renamed from: j$.wrappers.O */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2829O implements IntBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2458j f1148a;

    private /* synthetic */ C2829O(InterfaceC2458j interfaceC2458j) {
        this.f1148a = interfaceC2458j;
    }

    /* renamed from: a */
    public static /* synthetic */ IntBinaryOperator m183a(InterfaceC2458j interfaceC2458j) {
        if (interfaceC2458j == null) {
            return null;
        }
        return interfaceC2458j instanceof C2827N ? ((C2827N) interfaceC2458j).f1146a : new C2829O(interfaceC2458j);
    }

    @Override // java.util.function.IntBinaryOperator
    public /* synthetic */ int applyAsInt(int i, int i2) {
        return this.f1148a.applyAsInt(i, i2);
    }
}
