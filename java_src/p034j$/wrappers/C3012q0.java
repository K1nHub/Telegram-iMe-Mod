package p034j$.wrappers;

import java.util.function.ObjDoubleConsumer;
import p034j$.util.function.InterfaceC2607u;
/* renamed from: j$.wrappers.q0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3012q0 implements InterfaceC2607u {

    /* renamed from: a */
    final /* synthetic */ ObjDoubleConsumer f1199a;

    private /* synthetic */ C3012q0(ObjDoubleConsumer objDoubleConsumer) {
        this.f1199a = objDoubleConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2607u m119a(ObjDoubleConsumer objDoubleConsumer) {
        if (objDoubleConsumer == null) {
            return null;
        }
        return objDoubleConsumer instanceof C3014r0 ? ((C3014r0) objDoubleConsumer).f1201a : new C3012q0(objDoubleConsumer);
    }

    @Override // p034j$.util.function.InterfaceC2607u
    public /* synthetic */ void accept(Object obj, double d) {
        this.f1199a.accept(obj, d);
    }
}
