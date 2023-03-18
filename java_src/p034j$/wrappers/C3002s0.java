package p034j$.wrappers;

import java.util.function.ObjIntConsumer;
import p034j$.util.function.InterfaceC2594v;
/* renamed from: j$.wrappers.s0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3002s0 implements InterfaceC2594v {

    /* renamed from: a */
    final /* synthetic */ ObjIntConsumer f1202a;

    private /* synthetic */ C3002s0(ObjIntConsumer objIntConsumer) {
        this.f1202a = objIntConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2594v m116a(ObjIntConsumer objIntConsumer) {
        if (objIntConsumer == null) {
            return null;
        }
        return objIntConsumer instanceof C3004t0 ? ((C3004t0) objIntConsumer).f1204a : new C3002s0(objIntConsumer);
    }

    @Override // p034j$.util.function.InterfaceC2594v
    public /* synthetic */ void accept(Object obj, int i) {
        this.f1202a.accept(obj, i);
    }
}
