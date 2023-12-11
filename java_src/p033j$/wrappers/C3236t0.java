package p033j$.wrappers;

import java.util.function.ObjLongConsumer;
import p033j$.util.function.InterfaceC2833v;
/* renamed from: j$.wrappers.t0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3236t0 implements ObjLongConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2833v f1338a;

    private /* synthetic */ C3236t0(InterfaceC2833v interfaceC2833v) {
        this.f1338a = interfaceC2833v;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjLongConsumer m168a(InterfaceC2833v interfaceC2833v) {
        if (interfaceC2833v == null) {
            return null;
        }
        return interfaceC2833v instanceof C3234s0 ? ((C3234s0) interfaceC2833v).f1336a : new C3236t0(interfaceC2833v);
    }

    @Override // java.util.function.ObjLongConsumer
    public /* synthetic */ void accept(Object obj, long j) {
        this.f1338a.accept(obj, j);
    }
}
