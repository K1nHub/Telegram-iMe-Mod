package p033j$.wrappers;

import java.util.function.IntConsumer;
import p033j$.util.function.InterfaceC2881l;
/* renamed from: j$.wrappers.Q */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3253Q implements IntConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2881l f1246a;

    private /* synthetic */ C3253Q(InterfaceC2881l interfaceC2881l) {
        this.f1246a = interfaceC2881l;
    }

    /* renamed from: a */
    public static /* synthetic */ IntConsumer m182a(InterfaceC2881l interfaceC2881l) {
        if (interfaceC2881l == null) {
            return null;
        }
        return interfaceC2881l instanceof C3252P ? ((C3252P) interfaceC2881l).f1245a : new C3253Q(interfaceC2881l);
    }

    @Override // java.util.function.IntConsumer
    public /* synthetic */ void accept(int i) {
        this.f1246a.accept(i);
    }

    @Override // java.util.function.IntConsumer
    public /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return m182a(this.f1246a.mo183l(C3252P.m184b(intConsumer)));
    }
}
