package p034j$.wrappers;

import java.util.function.ObjIntConsumer;
import p034j$.util.function.InterfaceC2715v;
/* renamed from: j$.wrappers.t0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3125t0 implements ObjIntConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2715v f1208a;

    private /* synthetic */ C3125t0(InterfaceC2715v interfaceC2715v) {
        this.f1208a = interfaceC2715v;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjIntConsumer m99a(InterfaceC2715v interfaceC2715v) {
        if (interfaceC2715v == null) {
            return null;
        }
        return interfaceC2715v instanceof C3123s0 ? ((C3123s0) interfaceC2715v).f1206a : new C3125t0(interfaceC2715v);
    }

    @Override // java.util.function.ObjIntConsumer
    public /* synthetic */ void accept(Object obj, int i) {
        this.f1208a.accept(obj, i);
    }
}
