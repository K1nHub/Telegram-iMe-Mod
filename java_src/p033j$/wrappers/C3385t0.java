package p033j$.wrappers;

import java.util.function.ObjIntConsumer;
import p033j$.util.function.InterfaceC2975v;
/* renamed from: j$.wrappers.t0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3385t0 implements ObjIntConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2975v f1303a;

    private /* synthetic */ C3385t0(InterfaceC2975v interfaceC2975v) {
        this.f1303a = interfaceC2975v;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjIntConsumer m117a(InterfaceC2975v interfaceC2975v) {
        if (interfaceC2975v == null) {
            return null;
        }
        return interfaceC2975v instanceof C3383s0 ? ((C3383s0) interfaceC2975v).f1301a : new C3385t0(interfaceC2975v);
    }

    @Override // java.util.function.ObjIntConsumer
    public /* synthetic */ void accept(Object obj, int i) {
        this.f1303a.accept(obj, i);
    }
}
