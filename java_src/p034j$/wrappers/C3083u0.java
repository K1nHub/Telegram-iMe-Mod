package p034j$.wrappers;

import java.util.function.ObjLongConsumer;
import p034j$.util.function.InterfaceC2672w;
/* renamed from: j$.wrappers.u0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3083u0 implements InterfaceC2672w {

    /* renamed from: a */
    final /* synthetic */ ObjLongConsumer f1207a;

    private /* synthetic */ C3083u0(ObjLongConsumer objLongConsumer) {
        this.f1207a = objLongConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2672w m92a(ObjLongConsumer objLongConsumer) {
        if (objLongConsumer == null) {
            return null;
        }
        return objLongConsumer instanceof C3085v0 ? ((C3085v0) objLongConsumer).f1209a : new C3083u0(objLongConsumer);
    }

    @Override // p034j$.util.function.InterfaceC2672w
    public /* synthetic */ void accept(Object obj, long j) {
        this.f1207a.accept(obj, j);
    }
}
