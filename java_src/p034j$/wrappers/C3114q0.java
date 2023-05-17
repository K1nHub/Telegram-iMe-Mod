package p034j$.wrappers;

import java.util.function.ObjDoubleConsumer;
import p034j$.util.function.InterfaceC2709u;
/* renamed from: j$.wrappers.q0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3114q0 implements InterfaceC2709u {

    /* renamed from: a */
    final /* synthetic */ ObjDoubleConsumer f1202a;

    private /* synthetic */ C3114q0(ObjDoubleConsumer objDoubleConsumer) {
        this.f1202a = objDoubleConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2709u m105a(ObjDoubleConsumer objDoubleConsumer) {
        if (objDoubleConsumer == null) {
            return null;
        }
        return objDoubleConsumer instanceof C3116r0 ? ((C3116r0) objDoubleConsumer).f1204a : new C3114q0(objDoubleConsumer);
    }

    @Override // p034j$.util.function.InterfaceC2709u
    public /* synthetic */ void accept(Object obj, double d) {
        this.f1202a.accept(obj, d);
    }
}
