package p033j$.wrappers;

import java.util.function.ObjLongConsumer;
import p033j$.util.function.InterfaceC2836v;
/* renamed from: j$.wrappers.s0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3237s0 implements InterfaceC2836v {

    /* renamed from: a */
    final /* synthetic */ ObjLongConsumer f1336a;

    private /* synthetic */ C3237s0(ObjLongConsumer objLongConsumer) {
        this.f1336a = objLongConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2836v m170a(ObjLongConsumer objLongConsumer) {
        if (objLongConsumer == null) {
            return null;
        }
        return objLongConsumer instanceof C3239t0 ? ((C3239t0) objLongConsumer).f1338a : new C3237s0(objLongConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2836v
    public /* synthetic */ void accept(Object obj, long j) {
        this.f1336a.accept(obj, j);
    }
}
