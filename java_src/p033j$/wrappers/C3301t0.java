package p033j$.wrappers;

import java.util.function.ObjIntConsumer;
import p033j$.util.function.InterfaceC2891v;
/* renamed from: j$.wrappers.t0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3301t0 implements ObjIntConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2891v f1294a;

    private /* synthetic */ C3301t0(InterfaceC2891v interfaceC2891v) {
        this.f1294a = interfaceC2891v;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjIntConsumer m117a(InterfaceC2891v interfaceC2891v) {
        if (interfaceC2891v == null) {
            return null;
        }
        return interfaceC2891v instanceof C3299s0 ? ((C3299s0) interfaceC2891v).f1292a : new C3301t0(interfaceC2891v);
    }

    @Override // java.util.function.ObjIntConsumer
    public /* synthetic */ void accept(Object obj, int i) {
        this.f1294a.accept(obj, i);
    }
}
