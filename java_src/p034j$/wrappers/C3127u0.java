package p034j$.wrappers;

import java.util.function.ObjLongConsumer;
import p034j$.util.function.InterfaceC2716w;
/* renamed from: j$.wrappers.u0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3127u0 implements InterfaceC2716w {

    /* renamed from: a */
    final /* synthetic */ ObjLongConsumer f1210a;

    private /* synthetic */ C3127u0(ObjLongConsumer objLongConsumer) {
        this.f1210a = objLongConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2716w m97a(ObjLongConsumer objLongConsumer) {
        if (objLongConsumer == null) {
            return null;
        }
        return objLongConsumer instanceof C3129v0 ? ((C3129v0) objLongConsumer).f1212a : new C3127u0(objLongConsumer);
    }

    @Override // p034j$.util.function.InterfaceC2716w
    public /* synthetic */ void accept(Object obj, long j) {
        this.f1210a.accept(obj, j);
    }
}
