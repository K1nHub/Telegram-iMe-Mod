package p034j$.wrappers;

import java.util.function.IntBinaryOperator;
import p034j$.util.function.InterfaceC2698j;
/* renamed from: j$.wrappers.O */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3069O implements IntBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2698j f1157a;

    private /* synthetic */ C3069O(InterfaceC2698j interfaceC2698j) {
        this.f1157a = interfaceC2698j;
    }

    /* renamed from: a */
    public static /* synthetic */ IntBinaryOperator m168a(InterfaceC2698j interfaceC2698j) {
        if (interfaceC2698j == null) {
            return null;
        }
        return interfaceC2698j instanceof C3067N ? ((C3067N) interfaceC2698j).f1155a : new C3069O(interfaceC2698j);
    }

    @Override // java.util.function.IntBinaryOperator
    public /* synthetic */ int applyAsInt(int i, int i2) {
        return this.f1157a.applyAsInt(i, i2);
    }
}
