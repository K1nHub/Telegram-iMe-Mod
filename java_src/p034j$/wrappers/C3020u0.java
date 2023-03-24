package p034j$.wrappers;

import java.util.function.ObjLongConsumer;
import p034j$.util.function.InterfaceC2609w;
/* renamed from: j$.wrappers.u0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3020u0 implements InterfaceC2609w {

    /* renamed from: a */
    final /* synthetic */ ObjLongConsumer f1207a;

    private /* synthetic */ C3020u0(ObjLongConsumer objLongConsumer) {
        this.f1207a = objLongConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2609w m111a(ObjLongConsumer objLongConsumer) {
        if (objLongConsumer == null) {
            return null;
        }
        return objLongConsumer instanceof C3022v0 ? ((C3022v0) objLongConsumer).f1209a : new C3020u0(objLongConsumer);
    }

    @Override // p034j$.util.function.InterfaceC2609w
    public /* synthetic */ void accept(Object obj, long j) {
        this.f1207a.accept(obj, j);
    }
}
