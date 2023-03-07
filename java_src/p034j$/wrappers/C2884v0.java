package p034j$.wrappers;

import java.util.function.ObjLongConsumer;
import p034j$.util.function.InterfaceC2471w;
/* renamed from: j$.wrappers.v0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2884v0 implements ObjLongConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2471w f1203a;

    private /* synthetic */ C2884v0(InterfaceC2471w interfaceC2471w) {
        this.f1203a = interfaceC2471w;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjLongConsumer m110a(InterfaceC2471w interfaceC2471w) {
        if (interfaceC2471w == null) {
            return null;
        }
        return interfaceC2471w instanceof C2882u0 ? ((C2882u0) interfaceC2471w).f1201a : new C2884v0(interfaceC2471w);
    }

    @Override // java.util.function.ObjLongConsumer
    public /* synthetic */ void accept(Object obj, long j) {
        this.f1203a.accept(obj, j);
    }
}
