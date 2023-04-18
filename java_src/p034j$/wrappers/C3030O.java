package p034j$.wrappers;

import java.util.function.IntBinaryOperator;
import p034j$.util.function.InterfaceC2659j;
/* renamed from: j$.wrappers.O */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3030O implements IntBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2659j f1154a;

    private /* synthetic */ C3030O(InterfaceC2659j interfaceC2659j) {
        this.f1154a = interfaceC2659j;
    }

    /* renamed from: a */
    public static /* synthetic */ IntBinaryOperator m163a(InterfaceC2659j interfaceC2659j) {
        if (interfaceC2659j == null) {
            return null;
        }
        return interfaceC2659j instanceof C3028N ? ((C3028N) interfaceC2659j).f1152a : new C3030O(interfaceC2659j);
    }

    @Override // java.util.function.IntBinaryOperator
    public /* synthetic */ int applyAsInt(int i, int i2) {
        return this.f1154a.applyAsInt(i, i2);
    }
}
