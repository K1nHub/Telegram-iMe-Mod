package p033j$.wrappers;

import java.util.function.ObjDoubleConsumer;
import p033j$.util.function.InterfaceC2890u;
/* renamed from: j$.wrappers.q0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3295q0 implements InterfaceC2890u {

    /* renamed from: a */
    final /* synthetic */ ObjDoubleConsumer f1288a;

    private /* synthetic */ C3295q0(ObjDoubleConsumer objDoubleConsumer) {
        this.f1288a = objDoubleConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2890u m123a(ObjDoubleConsumer objDoubleConsumer) {
        if (objDoubleConsumer == null) {
            return null;
        }
        return objDoubleConsumer instanceof C3297r0 ? ((C3297r0) objDoubleConsumer).f1290a : new C3295q0(objDoubleConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2890u
    public /* synthetic */ void accept(Object obj, double d) {
        this.f1288a.accept(obj, d);
    }
}
