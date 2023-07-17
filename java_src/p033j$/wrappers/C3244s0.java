package p033j$.wrappers;

import java.util.function.ObjIntConsumer;
import p033j$.util.function.InterfaceC2836v;
/* renamed from: j$.wrappers.s0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3244s0 implements InterfaceC2836v {

    /* renamed from: a */
    final /* synthetic */ ObjIntConsumer f1288a;

    private /* synthetic */ C3244s0(ObjIntConsumer objIntConsumer) {
        this.f1288a = objIntConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2836v m101a(ObjIntConsumer objIntConsumer) {
        if (objIntConsumer == null) {
            return null;
        }
        return objIntConsumer instanceof C3246t0 ? ((C3246t0) objIntConsumer).f1290a : new C3244s0(objIntConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2836v
    public /* synthetic */ void accept(Object obj, int i) {
        this.f1288a.accept(obj, i);
    }
}
