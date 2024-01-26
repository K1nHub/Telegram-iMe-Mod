package p033j$.wrappers;

import java.util.function.IntBinaryOperator;
import p033j$.util.function.InterfaceC2819j;
/* renamed from: j$.wrappers.M */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3182M implements IntBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2819j f1286a;

    private /* synthetic */ C3182M(InterfaceC2819j interfaceC2819j) {
        this.f1286a = interfaceC2819j;
    }

    /* renamed from: a */
    public static /* synthetic */ IntBinaryOperator m240a(InterfaceC2819j interfaceC2819j) {
        if (interfaceC2819j == null) {
            return null;
        }
        return interfaceC2819j instanceof C3180L ? ((C3180L) interfaceC2819j).f1284a : new C3182M(interfaceC2819j);
    }

    @Override // java.util.function.IntBinaryOperator
    public /* synthetic */ int applyAsInt(int i, int i2) {
        return this.f1286a.applyAsInt(i, i2);
    }
}
