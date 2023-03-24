package p034j$.wrappers;

import java.util.function.ObjLongConsumer;
import p034j$.util.function.InterfaceC2609w;
/* renamed from: j$.wrappers.v0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3022v0 implements ObjLongConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2609w f1209a;

    private /* synthetic */ C3022v0(InterfaceC2609w interfaceC2609w) {
        this.f1209a = interfaceC2609w;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjLongConsumer m109a(InterfaceC2609w interfaceC2609w) {
        if (interfaceC2609w == null) {
            return null;
        }
        return interfaceC2609w instanceof C3020u0 ? ((C3020u0) interfaceC2609w).f1207a : new C3022v0(interfaceC2609w);
    }

    @Override // java.util.function.ObjLongConsumer
    public /* synthetic */ void accept(Object obj, long j) {
        this.f1209a.accept(obj, j);
    }
}
