package p034j$.wrappers;

import java.util.function.ObjIntConsumer;
import p034j$.util.function.InterfaceC2470v;
/* renamed from: j$.wrappers.s0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2878s0 implements InterfaceC2470v {

    /* renamed from: a */
    final /* synthetic */ ObjIntConsumer f1197a;

    private /* synthetic */ C2878s0(ObjIntConsumer objIntConsumer) {
        this.f1197a = objIntConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2470v m116a(ObjIntConsumer objIntConsumer) {
        if (objIntConsumer == null) {
            return null;
        }
        return objIntConsumer instanceof C2880t0 ? ((C2880t0) objIntConsumer).f1199a : new C2878s0(objIntConsumer);
    }

    @Override // p034j$.util.function.InterfaceC2470v
    public /* synthetic */ void accept(Object obj, int i) {
        this.f1197a.accept(obj, i);
    }
}
