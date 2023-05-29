package p034j$.wrappers;

import java.util.function.IntBinaryOperator;
import p034j$.util.function.InterfaceC2703j;
/* renamed from: j$.wrappers.O */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3074O implements IntBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2703j f1157a;

    private /* synthetic */ C3074O(InterfaceC2703j interfaceC2703j) {
        this.f1157a = interfaceC2703j;
    }

    /* renamed from: a */
    public static /* synthetic */ IntBinaryOperator m168a(InterfaceC2703j interfaceC2703j) {
        if (interfaceC2703j == null) {
            return null;
        }
        return interfaceC2703j instanceof C3072N ? ((C3072N) interfaceC2703j).f1155a : new C3074O(interfaceC2703j);
    }

    @Override // java.util.function.IntBinaryOperator
    public /* synthetic */ int applyAsInt(int i, int i2) {
        return this.f1157a.applyAsInt(i, i2);
    }
}
