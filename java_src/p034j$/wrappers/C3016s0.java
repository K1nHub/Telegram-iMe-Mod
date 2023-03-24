package p034j$.wrappers;

import java.util.function.ObjIntConsumer;
import p034j$.util.function.InterfaceC2608v;
/* renamed from: j$.wrappers.s0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3016s0 implements InterfaceC2608v {

    /* renamed from: a */
    final /* synthetic */ ObjIntConsumer f1203a;

    private /* synthetic */ C3016s0(ObjIntConsumer objIntConsumer) {
        this.f1203a = objIntConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2608v m115a(ObjIntConsumer objIntConsumer) {
        if (objIntConsumer == null) {
            return null;
        }
        return objIntConsumer instanceof C3018t0 ? ((C3018t0) objIntConsumer).f1205a : new C3016s0(objIntConsumer);
    }

    @Override // p034j$.util.function.InterfaceC2608v
    public /* synthetic */ void accept(Object obj, int i) {
        this.f1203a.accept(obj, i);
    }
}
