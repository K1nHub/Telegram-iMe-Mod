package p034j$.wrappers;

import java.util.function.ObjIntConsumer;
import p034j$.util.function.InterfaceC2594v;
/* renamed from: j$.wrappers.t0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3004t0 implements ObjIntConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2594v f1204a;

    private /* synthetic */ C3004t0(InterfaceC2594v interfaceC2594v) {
        this.f1204a = interfaceC2594v;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjIntConsumer m114a(InterfaceC2594v interfaceC2594v) {
        if (interfaceC2594v == null) {
            return null;
        }
        return interfaceC2594v instanceof C3002s0 ? ((C3002s0) interfaceC2594v).f1202a : new C3004t0(interfaceC2594v);
    }

    @Override // java.util.function.ObjIntConsumer
    public /* synthetic */ void accept(Object obj, int i) {
        this.f1204a.accept(obj, i);
    }
}
