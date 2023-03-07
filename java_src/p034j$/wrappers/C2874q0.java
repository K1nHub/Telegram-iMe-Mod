package p034j$.wrappers;

import java.util.function.ObjDoubleConsumer;
import p034j$.util.function.InterfaceC2469u;
/* renamed from: j$.wrappers.q0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2874q0 implements InterfaceC2469u {

    /* renamed from: a */
    final /* synthetic */ ObjDoubleConsumer f1193a;

    private /* synthetic */ C2874q0(ObjDoubleConsumer objDoubleConsumer) {
        this.f1193a = objDoubleConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2469u m120a(ObjDoubleConsumer objDoubleConsumer) {
        if (objDoubleConsumer == null) {
            return null;
        }
        return objDoubleConsumer instanceof C2876r0 ? ((C2876r0) objDoubleConsumer).f1195a : new C2874q0(objDoubleConsumer);
    }

    @Override // p034j$.util.function.InterfaceC2469u
    public /* synthetic */ void accept(Object obj, double d) {
        this.f1193a.accept(obj, d);
    }
}
