package p034j$.wrappers;

import java.util.function.ObjLongConsumer;
import p034j$.util.function.InterfaceC2595w;
/* renamed from: j$.wrappers.u0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3006u0 implements InterfaceC2595w {

    /* renamed from: a */
    final /* synthetic */ ObjLongConsumer f1206a;

    private /* synthetic */ C3006u0(ObjLongConsumer objLongConsumer) {
        this.f1206a = objLongConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2595w m112a(ObjLongConsumer objLongConsumer) {
        if (objLongConsumer == null) {
            return null;
        }
        return objLongConsumer instanceof C3008v0 ? ((C3008v0) objLongConsumer).f1208a : new C3006u0(objLongConsumer);
    }

    @Override // p034j$.util.function.InterfaceC2595w
    public /* synthetic */ void accept(Object obj, long j) {
        this.f1206a.accept(obj, j);
    }
}
