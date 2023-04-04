package p035j$.wrappers;

import java.util.function.ObjIntConsumer;
import p035j$.util.function.InterfaceC2684v;
/* renamed from: j$.wrappers.s0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3092s0 implements InterfaceC2684v {

    /* renamed from: a */
    final /* synthetic */ ObjIntConsumer f1208a;

    private /* synthetic */ C3092s0(ObjIntConsumer objIntConsumer) {
        this.f1208a = objIntConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2684v m110a(ObjIntConsumer objIntConsumer) {
        if (objIntConsumer == null) {
            return null;
        }
        return objIntConsumer instanceof C3094t0 ? ((C3094t0) objIntConsumer).f1210a : new C3092s0(objIntConsumer);
    }

    @Override // p035j$.util.function.InterfaceC2684v
    public /* synthetic */ void accept(Object obj, int i) {
        this.f1208a.accept(obj, i);
    }
}
