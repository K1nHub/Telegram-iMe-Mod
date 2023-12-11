package p033j$.wrappers;

import java.util.function.IntBinaryOperator;
import p033j$.util.function.InterfaceC2821j;
/* renamed from: j$.wrappers.M */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3184M implements IntBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2821j f1286a;

    private /* synthetic */ C3184M(InterfaceC2821j interfaceC2821j) {
        this.f1286a = interfaceC2821j;
    }

    /* renamed from: a */
    public static /* synthetic */ IntBinaryOperator m237a(InterfaceC2821j interfaceC2821j) {
        if (interfaceC2821j == null) {
            return null;
        }
        return interfaceC2821j instanceof C3182L ? ((C3182L) interfaceC2821j).f1284a : new C3184M(interfaceC2821j);
    }

    @Override // java.util.function.IntBinaryOperator
    public /* synthetic */ int applyAsInt(int i, int i2) {
        return this.f1286a.applyAsInt(i, i2);
    }
}
