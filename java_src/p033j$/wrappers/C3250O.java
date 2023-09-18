package p033j$.wrappers;

import java.util.function.IntBinaryOperator;
import p033j$.util.function.InterfaceC2879j;
/* renamed from: j$.wrappers.O */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3250O implements IntBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2879j f1243a;

    private /* synthetic */ C3250O(InterfaceC2879j interfaceC2879j) {
        this.f1243a = interfaceC2879j;
    }

    /* renamed from: a */
    public static /* synthetic */ IntBinaryOperator m186a(InterfaceC2879j interfaceC2879j) {
        if (interfaceC2879j == null) {
            return null;
        }
        return interfaceC2879j instanceof C3248N ? ((C3248N) interfaceC2879j).f1241a : new C3250O(interfaceC2879j);
    }

    @Override // java.util.function.IntBinaryOperator
    public /* synthetic */ int applyAsInt(int i, int i2) {
        return this.f1243a.applyAsInt(i, i2);
    }
}
