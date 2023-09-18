package p033j$.wrappers;

import java.util.function.ObjIntConsumer;
import p033j$.util.function.InterfaceC2891v;
/* renamed from: j$.wrappers.s0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3299s0 implements InterfaceC2891v {

    /* renamed from: a */
    final /* synthetic */ ObjIntConsumer f1292a;

    private /* synthetic */ C3299s0(ObjIntConsumer objIntConsumer) {
        this.f1292a = objIntConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2891v m119a(ObjIntConsumer objIntConsumer) {
        if (objIntConsumer == null) {
            return null;
        }
        return objIntConsumer instanceof C3301t0 ? ((C3301t0) objIntConsumer).f1294a : new C3299s0(objIntConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2891v
    public /* synthetic */ void accept(Object obj, int i) {
        this.f1292a.accept(obj, i);
    }
}
