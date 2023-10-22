package p033j$.wrappers;

import java.util.function.ObjIntConsumer;
import p033j$.util.function.InterfaceC2831u;
/* renamed from: j$.wrappers.r0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3231r0 implements ObjIntConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2831u f1334a;

    private /* synthetic */ C3231r0(InterfaceC2831u interfaceC2831u) {
        this.f1334a = interfaceC2831u;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjIntConsumer m170a(InterfaceC2831u interfaceC2831u) {
        if (interfaceC2831u == null) {
            return null;
        }
        return interfaceC2831u instanceof C3229q0 ? ((C3229q0) interfaceC2831u).f1332a : new C3231r0(interfaceC2831u);
    }

    @Override // java.util.function.ObjIntConsumer
    public /* synthetic */ void accept(Object obj, int i) {
        this.f1334a.accept(obj, i);
    }
}
