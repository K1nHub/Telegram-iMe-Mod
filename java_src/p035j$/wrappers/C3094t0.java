package p035j$.wrappers;

import java.util.function.ObjIntConsumer;
import p035j$.util.function.InterfaceC2684v;
/* renamed from: j$.wrappers.t0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3094t0 implements ObjIntConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2684v f1210a;

    private /* synthetic */ C3094t0(InterfaceC2684v interfaceC2684v) {
        this.f1210a = interfaceC2684v;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjIntConsumer m108a(InterfaceC2684v interfaceC2684v) {
        if (interfaceC2684v == null) {
            return null;
        }
        return interfaceC2684v instanceof C3092s0 ? ((C3092s0) interfaceC2684v).f1208a : new C3094t0(interfaceC2684v);
    }

    @Override // java.util.function.ObjIntConsumer
    public /* synthetic */ void accept(Object obj, int i) {
        this.f1210a.accept(obj, i);
    }
}
