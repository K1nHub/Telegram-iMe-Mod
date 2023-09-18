package p033j$.wrappers;

import java.util.function.ObjLongConsumer;
import p033j$.util.function.InterfaceC2892w;
/* renamed from: j$.wrappers.v0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3305v0 implements ObjLongConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2892w f1298a;

    private /* synthetic */ C3305v0(InterfaceC2892w interfaceC2892w) {
        this.f1298a = interfaceC2892w;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjLongConsumer m113a(InterfaceC2892w interfaceC2892w) {
        if (interfaceC2892w == null) {
            return null;
        }
        return interfaceC2892w instanceof C3303u0 ? ((C3303u0) interfaceC2892w).f1296a : new C3305v0(interfaceC2892w);
    }

    @Override // java.util.function.ObjLongConsumer
    public /* synthetic */ void accept(Object obj, long j) {
        this.f1298a.accept(obj, j);
    }
}
