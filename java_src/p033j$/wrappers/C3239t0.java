package p033j$.wrappers;

import java.util.function.ObjLongConsumer;
import p033j$.util.function.InterfaceC2836v;
/* renamed from: j$.wrappers.t0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3239t0 implements ObjLongConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2836v f1338a;

    private /* synthetic */ C3239t0(InterfaceC2836v interfaceC2836v) {
        this.f1338a = interfaceC2836v;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjLongConsumer m168a(InterfaceC2836v interfaceC2836v) {
        if (interfaceC2836v == null) {
            return null;
        }
        return interfaceC2836v instanceof C3237s0 ? ((C3237s0) interfaceC2836v).f1336a : new C3239t0(interfaceC2836v);
    }

    @Override // java.util.function.ObjLongConsumer
    public /* synthetic */ void accept(Object obj, long j) {
        this.f1338a.accept(obj, j);
    }
}
