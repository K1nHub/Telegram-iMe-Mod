package p034j$.wrappers;

import java.util.function.ObjLongConsumer;
import p034j$.util.function.InterfaceC2711w;
/* renamed from: j$.wrappers.u0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3122u0 implements InterfaceC2711w {

    /* renamed from: a */
    final /* synthetic */ ObjLongConsumer f1210a;

    private /* synthetic */ C3122u0(ObjLongConsumer objLongConsumer) {
        this.f1210a = objLongConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2711w m97a(ObjLongConsumer objLongConsumer) {
        if (objLongConsumer == null) {
            return null;
        }
        return objLongConsumer instanceof C3124v0 ? ((C3124v0) objLongConsumer).f1212a : new C3122u0(objLongConsumer);
    }

    @Override // p034j$.util.function.InterfaceC2711w
    public /* synthetic */ void accept(Object obj, long j) {
        this.f1210a.accept(obj, j);
    }
}
