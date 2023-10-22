package p033j$.wrappers;

import java.util.function.ObjLongConsumer;
import p033j$.util.function.InterfaceC2832v;
/* renamed from: j$.wrappers.t0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3235t0 implements ObjLongConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2832v f1338a;

    private /* synthetic */ C3235t0(InterfaceC2832v interfaceC2832v) {
        this.f1338a = interfaceC2832v;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjLongConsumer m166a(InterfaceC2832v interfaceC2832v) {
        if (interfaceC2832v == null) {
            return null;
        }
        return interfaceC2832v instanceof C3233s0 ? ((C3233s0) interfaceC2832v).f1336a : new C3235t0(interfaceC2832v);
    }

    @Override // java.util.function.ObjLongConsumer
    public /* synthetic */ void accept(Object obj, long j) {
        this.f1338a.accept(obj, j);
    }
}
