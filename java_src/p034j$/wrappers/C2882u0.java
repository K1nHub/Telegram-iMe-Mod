package p034j$.wrappers;

import java.util.function.ObjLongConsumer;
import p034j$.util.function.InterfaceC2471w;
/* renamed from: j$.wrappers.u0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2882u0 implements InterfaceC2471w {

    /* renamed from: a */
    final /* synthetic */ ObjLongConsumer f1201a;

    private /* synthetic */ C2882u0(ObjLongConsumer objLongConsumer) {
        this.f1201a = objLongConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2471w m112a(ObjLongConsumer objLongConsumer) {
        if (objLongConsumer == null) {
            return null;
        }
        return objLongConsumer instanceof C2884v0 ? ((C2884v0) objLongConsumer).f1203a : new C2882u0(objLongConsumer);
    }

    @Override // p034j$.util.function.InterfaceC2471w
    public /* synthetic */ void accept(Object obj, long j) {
        this.f1201a.accept(obj, j);
    }
}
