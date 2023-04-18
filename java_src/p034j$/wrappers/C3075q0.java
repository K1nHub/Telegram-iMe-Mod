package p034j$.wrappers;

import java.util.function.ObjDoubleConsumer;
import p034j$.util.function.InterfaceC2670u;
/* renamed from: j$.wrappers.q0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3075q0 implements InterfaceC2670u {

    /* renamed from: a */
    final /* synthetic */ ObjDoubleConsumer f1199a;

    private /* synthetic */ C3075q0(ObjDoubleConsumer objDoubleConsumer) {
        this.f1199a = objDoubleConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2670u m100a(ObjDoubleConsumer objDoubleConsumer) {
        if (objDoubleConsumer == null) {
            return null;
        }
        return objDoubleConsumer instanceof C3077r0 ? ((C3077r0) objDoubleConsumer).f1201a : new C3075q0(objDoubleConsumer);
    }

    @Override // p034j$.util.function.InterfaceC2670u
    public /* synthetic */ void accept(Object obj, double d) {
        this.f1199a.accept(obj, d);
    }
}
