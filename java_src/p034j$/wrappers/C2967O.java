package p034j$.wrappers;

import java.util.function.IntBinaryOperator;
import p034j$.util.function.InterfaceC2596j;
/* renamed from: j$.wrappers.O */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2967O implements IntBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2596j f1154a;

    private /* synthetic */ C2967O(InterfaceC2596j interfaceC2596j) {
        this.f1154a = interfaceC2596j;
    }

    /* renamed from: a */
    public static /* synthetic */ IntBinaryOperator m182a(InterfaceC2596j interfaceC2596j) {
        if (interfaceC2596j == null) {
            return null;
        }
        return interfaceC2596j instanceof C2965N ? ((C2965N) interfaceC2596j).f1152a : new C2967O(interfaceC2596j);
    }

    @Override // java.util.function.IntBinaryOperator
    public /* synthetic */ int applyAsInt(int i, int i2) {
        return this.f1154a.applyAsInt(i, i2);
    }
}
