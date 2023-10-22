package p033j$.wrappers;

import java.util.function.IntBinaryOperator;
import p033j$.util.function.InterfaceC2820j;
/* renamed from: j$.wrappers.M */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3183M implements IntBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2820j f1286a;

    private /* synthetic */ C3183M(InterfaceC2820j interfaceC2820j) {
        this.f1286a = interfaceC2820j;
    }

    /* renamed from: a */
    public static /* synthetic */ IntBinaryOperator m236a(InterfaceC2820j interfaceC2820j) {
        if (interfaceC2820j == null) {
            return null;
        }
        return interfaceC2820j instanceof C3181L ? ((C3181L) interfaceC2820j).f1284a : new C3183M(interfaceC2820j);
    }

    @Override // java.util.function.IntBinaryOperator
    public /* synthetic */ int applyAsInt(int i, int i2) {
        return this.f1286a.applyAsInt(i, i2);
    }
}
