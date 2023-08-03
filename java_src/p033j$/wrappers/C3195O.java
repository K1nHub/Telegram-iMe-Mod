package p033j$.wrappers;

import java.util.function.IntBinaryOperator;
import p033j$.util.function.InterfaceC2824j;
/* renamed from: j$.wrappers.O */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3195O implements IntBinaryOperator {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2824j f1242a;

    private /* synthetic */ C3195O(InterfaceC2824j interfaceC2824j) {
        this.f1242a = interfaceC2824j;
    }

    /* renamed from: a */
    public static /* synthetic */ IntBinaryOperator m186a(InterfaceC2824j interfaceC2824j) {
        if (interfaceC2824j == null) {
            return null;
        }
        return interfaceC2824j instanceof C3193N ? ((C3193N) interfaceC2824j).f1240a : new C3195O(interfaceC2824j);
    }

    @Override // java.util.function.IntBinaryOperator
    public /* synthetic */ int applyAsInt(int i, int i2) {
        return this.f1242a.applyAsInt(i, i2);
    }
}
