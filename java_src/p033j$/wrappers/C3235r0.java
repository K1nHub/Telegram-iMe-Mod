package p033j$.wrappers;

import java.util.function.ObjIntConsumer;
import p033j$.util.function.InterfaceC2835u;
/* renamed from: j$.wrappers.r0 */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3235r0 implements ObjIntConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2835u f1334a;

    private /* synthetic */ C3235r0(InterfaceC2835u interfaceC2835u) {
        this.f1334a = interfaceC2835u;
    }

    /* renamed from: a */
    public static /* synthetic */ ObjIntConsumer m172a(InterfaceC2835u interfaceC2835u) {
        if (interfaceC2835u == null) {
            return null;
        }
        return interfaceC2835u instanceof C3233q0 ? ((C3233q0) interfaceC2835u).f1332a : new C3235r0(interfaceC2835u);
    }

    @Override // java.util.function.ObjIntConsumer
    public /* synthetic */ void accept(Object obj, int i) {
        this.f1334a.accept(obj, i);
    }
}
