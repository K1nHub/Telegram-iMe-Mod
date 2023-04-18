package p034j$.wrappers;

import java.util.function.ObjLongConsumer;
import p034j$.util.function.InterfaceC2672w;
/* renamed from: j$.wrappers.v0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3085v0 implements ObjLongConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2672w f1209a;

    private /* synthetic */ C3085v0(InterfaceC2672w interfaceC2672w) {
        this.f1209a = interfaceC2672w;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjLongConsumer m90a(InterfaceC2672w interfaceC2672w) {
        if (interfaceC2672w == null) {
            return null;
        }
        return interfaceC2672w instanceof C3083u0 ? ((C3083u0) interfaceC2672w).f1207a : new C3085v0(interfaceC2672w);
    }

    @Override // java.util.function.ObjLongConsumer
    public /* synthetic */ void accept(Object obj, long j) {
        this.f1209a.accept(obj, j);
    }
}
