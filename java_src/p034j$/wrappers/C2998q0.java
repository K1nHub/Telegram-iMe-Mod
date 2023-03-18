package p034j$.wrappers;

import java.util.function.ObjDoubleConsumer;
import p034j$.util.function.InterfaceC2593u;
/* renamed from: j$.wrappers.q0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2998q0 implements InterfaceC2593u {

    /* renamed from: a */
    final /* synthetic */ ObjDoubleConsumer f1198a;

    private /* synthetic */ C2998q0(ObjDoubleConsumer objDoubleConsumer) {
        this.f1198a = objDoubleConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2593u m120a(ObjDoubleConsumer objDoubleConsumer) {
        if (objDoubleConsumer == null) {
            return null;
        }
        return objDoubleConsumer instanceof C3000r0 ? ((C3000r0) objDoubleConsumer).f1200a : new C2998q0(objDoubleConsumer);
    }

    @Override // p034j$.util.function.InterfaceC2593u
    public /* synthetic */ void accept(Object obj, double d) {
        this.f1198a.accept(obj, d);
    }
}
