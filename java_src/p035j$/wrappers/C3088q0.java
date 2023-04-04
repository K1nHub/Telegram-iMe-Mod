package p035j$.wrappers;

import java.util.function.ObjDoubleConsumer;
import p035j$.util.function.InterfaceC2683u;
/* renamed from: j$.wrappers.q0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3088q0 implements InterfaceC2683u {

    /* renamed from: a */
    final /* synthetic */ ObjDoubleConsumer f1204a;

    private /* synthetic */ C3088q0(ObjDoubleConsumer objDoubleConsumer) {
        this.f1204a = objDoubleConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2683u m114a(ObjDoubleConsumer objDoubleConsumer) {
        if (objDoubleConsumer == null) {
            return null;
        }
        return objDoubleConsumer instanceof C3090r0 ? ((C3090r0) objDoubleConsumer).f1206a : new C3088q0(objDoubleConsumer);
    }

    @Override // p035j$.util.function.InterfaceC2683u
    public /* synthetic */ void accept(Object obj, double d) {
        this.f1204a.accept(obj, d);
    }
}
