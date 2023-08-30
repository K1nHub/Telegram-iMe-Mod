package p033j$.wrappers;

import java.util.function.ObjLongConsumer;
import p033j$.util.function.InterfaceC2976w;
/* renamed from: j$.wrappers.u0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3387u0 implements InterfaceC2976w {

    /* renamed from: a */
    final /* synthetic */ ObjLongConsumer f1305a;

    private /* synthetic */ C3387u0(ObjLongConsumer objLongConsumer) {
        this.f1305a = objLongConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2976w m115a(ObjLongConsumer objLongConsumer) {
        if (objLongConsumer == null) {
            return null;
        }
        return objLongConsumer instanceof C3389v0 ? ((C3389v0) objLongConsumer).f1307a : new C3387u0(objLongConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2976w
    public /* synthetic */ void accept(Object obj, long j) {
        this.f1305a.accept(obj, j);
    }
}
