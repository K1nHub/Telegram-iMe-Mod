package p033j$.wrappers;

import java.util.function.ObjIntConsumer;
import p033j$.util.function.InterfaceC2832u;
/* renamed from: j$.wrappers.r0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3232r0 implements ObjIntConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2832u f1334a;

    private /* synthetic */ C3232r0(InterfaceC2832u interfaceC2832u) {
        this.f1334a = interfaceC2832u;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjIntConsumer m172a(InterfaceC2832u interfaceC2832u) {
        if (interfaceC2832u == null) {
            return null;
        }
        return interfaceC2832u instanceof C3230q0 ? ((C3230q0) interfaceC2832u).f1332a : new C3232r0(interfaceC2832u);
    }

    @Override // java.util.function.ObjIntConsumer
    public /* synthetic */ void accept(Object obj, int i) {
        this.f1334a.accept(obj, i);
    }
}
