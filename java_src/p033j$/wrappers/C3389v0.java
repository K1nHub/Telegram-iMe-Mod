package p033j$.wrappers;

import java.util.function.ObjLongConsumer;
import p033j$.util.function.InterfaceC2976w;
/* renamed from: j$.wrappers.v0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3389v0 implements ObjLongConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2976w f1307a;

    private /* synthetic */ C3389v0(InterfaceC2976w interfaceC2976w) {
        this.f1307a = interfaceC2976w;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjLongConsumer m113a(InterfaceC2976w interfaceC2976w) {
        if (interfaceC2976w == null) {
            return null;
        }
        return interfaceC2976w instanceof C3387u0 ? ((C3387u0) interfaceC2976w).f1305a : new C3389v0(interfaceC2976w);
    }

    @Override // java.util.function.ObjLongConsumer
    public /* synthetic */ void accept(Object obj, long j) {
        this.f1307a.accept(obj, j);
    }
}
