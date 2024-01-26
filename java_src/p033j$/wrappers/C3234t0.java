package p033j$.wrappers;

import java.util.function.ObjLongConsumer;
import p033j$.util.function.InterfaceC2831v;
/* renamed from: j$.wrappers.t0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3234t0 implements ObjLongConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2831v f1338a;

    private /* synthetic */ C3234t0(InterfaceC2831v interfaceC2831v) {
        this.f1338a = interfaceC2831v;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjLongConsumer m171a(InterfaceC2831v interfaceC2831v) {
        if (interfaceC2831v == null) {
            return null;
        }
        return interfaceC2831v instanceof C3232s0 ? ((C3232s0) interfaceC2831v).f1336a : new C3234t0(interfaceC2831v);
    }

    @Override // java.util.function.ObjLongConsumer
    public /* synthetic */ void accept(Object obj, long j) {
        this.f1338a.accept(obj, j);
    }
}
