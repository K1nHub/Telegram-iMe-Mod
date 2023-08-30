package p033j$.wrappers;

import java.util.function.ObjIntConsumer;
import p033j$.util.function.InterfaceC2975v;
/* renamed from: j$.wrappers.s0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3383s0 implements InterfaceC2975v {

    /* renamed from: a */
    final /* synthetic */ ObjIntConsumer f1301a;

    private /* synthetic */ C3383s0(ObjIntConsumer objIntConsumer) {
        this.f1301a = objIntConsumer;
    }

    /* renamed from: a */
    public static /* synthetic */ InterfaceC2975v m119a(ObjIntConsumer objIntConsumer) {
        if (objIntConsumer == null) {
            return null;
        }
        return objIntConsumer instanceof C3385t0 ? ((C3385t0) objIntConsumer).f1303a : new C3383s0(objIntConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2975v
    public /* synthetic */ void accept(Object obj, int i) {
        this.f1301a.accept(obj, i);
    }
}
