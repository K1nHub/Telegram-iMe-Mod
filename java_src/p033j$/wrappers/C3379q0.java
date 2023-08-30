package p033j$.wrappers;

import java.util.function.ObjDoubleConsumer;
import p033j$.util.function.InterfaceC2974u;
/* renamed from: j$.wrappers.q0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3379q0 implements InterfaceC2974u {

    /* renamed from: a */
    final /* synthetic */ ObjDoubleConsumer f1297a;

    private /* synthetic */ C3379q0(ObjDoubleConsumer objDoubleConsumer) {
        this.f1297a = objDoubleConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2974u m123a(ObjDoubleConsumer objDoubleConsumer) {
        if (objDoubleConsumer == null) {
            return null;
        }
        return objDoubleConsumer instanceof C3381r0 ? ((C3381r0) objDoubleConsumer).f1299a : new C3379q0(objDoubleConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2974u
    public /* synthetic */ void accept(Object obj, double d) {
        this.f1297a.accept(obj, d);
    }
}
