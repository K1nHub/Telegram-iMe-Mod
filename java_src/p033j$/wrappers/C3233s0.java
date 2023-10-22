package p033j$.wrappers;

import java.util.function.ObjLongConsumer;
import p033j$.util.function.InterfaceC2832v;
/* renamed from: j$.wrappers.s0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3233s0 implements InterfaceC2832v {

    /* renamed from: a */
    final /* synthetic */ ObjLongConsumer f1336a;

    private /* synthetic */ C3233s0(ObjLongConsumer objLongConsumer) {
        this.f1336a = objLongConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2832v m168a(ObjLongConsumer objLongConsumer) {
        if (objLongConsumer == null) {
            return null;
        }
        return objLongConsumer instanceof C3235t0 ? ((C3235t0) objLongConsumer).f1338a : new C3233s0(objLongConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2832v
    public /* synthetic */ void accept(Object obj, long j) {
        this.f1336a.accept(obj, j);
    }
}
