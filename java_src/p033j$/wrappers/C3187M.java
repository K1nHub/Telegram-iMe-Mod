package p033j$.wrappers;

import java.util.function.IntBinaryOperator;
import p033j$.util.function.InterfaceC2824j;
/* renamed from: j$.wrappers.M */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3187M implements IntBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2824j f1286a;

    private /* synthetic */ C3187M(InterfaceC2824j interfaceC2824j) {
        this.f1286a = interfaceC2824j;
    }

    /* renamed from: a */
    public static /* synthetic */ IntBinaryOperator m237a(InterfaceC2824j interfaceC2824j) {
        if (interfaceC2824j == null) {
            return null;
        }
        return interfaceC2824j instanceof C3185L ? ((C3185L) interfaceC2824j).f1284a : new C3187M(interfaceC2824j);
    }

    @Override // java.util.function.IntBinaryOperator
    public /* synthetic */ int applyAsInt(int i, int i2) {
        return this.f1286a.applyAsInt(i, i2);
    }
}
