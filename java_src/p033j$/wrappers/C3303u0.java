package p033j$.wrappers;

import java.util.function.ObjLongConsumer;
import p033j$.util.function.InterfaceC2892w;
/* renamed from: j$.wrappers.u0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3303u0 implements InterfaceC2892w {

    /* renamed from: a */
    final /* synthetic */ ObjLongConsumer f1296a;

    private /* synthetic */ C3303u0(ObjLongConsumer objLongConsumer) {
        this.f1296a = objLongConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2892w m115a(ObjLongConsumer objLongConsumer) {
        if (objLongConsumer == null) {
            return null;
        }
        return objLongConsumer instanceof C3305v0 ? ((C3305v0) objLongConsumer).f1298a : new C3303u0(objLongConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2892w
    public /* synthetic */ void accept(Object obj, long j) {
        this.f1296a.accept(obj, j);
    }
}
