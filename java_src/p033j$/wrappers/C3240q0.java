package p033j$.wrappers;

import java.util.function.ObjDoubleConsumer;
import p033j$.util.function.InterfaceC2835u;
/* renamed from: j$.wrappers.q0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3240q0 implements InterfaceC2835u {

    /* renamed from: a */
    final /* synthetic */ ObjDoubleConsumer f1287a;

    private /* synthetic */ C3240q0(ObjDoubleConsumer objDoubleConsumer) {
        this.f1287a = objDoubleConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2835u m123a(ObjDoubleConsumer objDoubleConsumer) {
        if (objDoubleConsumer == null) {
            return null;
        }
        return objDoubleConsumer instanceof C3242r0 ? ((C3242r0) objDoubleConsumer).f1289a : new C3240q0(objDoubleConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2835u
    public /* synthetic */ void accept(Object obj, double d) {
        this.f1287a.accept(obj, d);
    }
}
