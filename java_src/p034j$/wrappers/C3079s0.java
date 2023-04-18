package p034j$.wrappers;

import java.util.function.ObjIntConsumer;
import p034j$.util.function.InterfaceC2671v;
/* renamed from: j$.wrappers.s0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3079s0 implements InterfaceC2671v {

    /* renamed from: a */
    final /* synthetic */ ObjIntConsumer f1203a;

    private /* synthetic */ C3079s0(ObjIntConsumer objIntConsumer) {
        this.f1203a = objIntConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2671v m96a(ObjIntConsumer objIntConsumer) {
        if (objIntConsumer == null) {
            return null;
        }
        return objIntConsumer instanceof C3081t0 ? ((C3081t0) objIntConsumer).f1205a : new C3079s0(objIntConsumer);
    }

    @Override // p034j$.util.function.InterfaceC2671v
    public /* synthetic */ void accept(Object obj, int i) {
        this.f1203a.accept(obj, i);
    }
}
