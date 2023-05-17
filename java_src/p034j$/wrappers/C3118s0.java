package p034j$.wrappers;

import java.util.function.ObjIntConsumer;
import p034j$.util.function.InterfaceC2710v;
/* renamed from: j$.wrappers.s0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3118s0 implements InterfaceC2710v {

    /* renamed from: a */
    final /* synthetic */ ObjIntConsumer f1206a;

    private /* synthetic */ C3118s0(ObjIntConsumer objIntConsumer) {
        this.f1206a = objIntConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2710v m101a(ObjIntConsumer objIntConsumer) {
        if (objIntConsumer == null) {
            return null;
        }
        return objIntConsumer instanceof C3120t0 ? ((C3120t0) objIntConsumer).f1208a : new C3118s0(objIntConsumer);
    }

    @Override // p034j$.util.function.InterfaceC2710v
    public /* synthetic */ void accept(Object obj, int i) {
        this.f1206a.accept(obj, i);
    }
}
