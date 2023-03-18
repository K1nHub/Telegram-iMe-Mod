package p034j$.wrappers;

import java.util.function.IntBinaryOperator;
import p034j$.util.function.InterfaceC2582j;
/* renamed from: j$.wrappers.O */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2953O implements IntBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2582j f1153a;

    private /* synthetic */ C2953O(InterfaceC2582j interfaceC2582j) {
        this.f1153a = interfaceC2582j;
    }

    /* renamed from: a */
    public static /* synthetic */ IntBinaryOperator m183a(InterfaceC2582j interfaceC2582j) {
        if (interfaceC2582j == null) {
            return null;
        }
        return interfaceC2582j instanceof C2951N ? ((C2951N) interfaceC2582j).f1151a : new C2953O(interfaceC2582j);
    }

    @Override // java.util.function.IntBinaryOperator
    public /* synthetic */ int applyAsInt(int i, int i2) {
        return this.f1153a.applyAsInt(i, i2);
    }
}
