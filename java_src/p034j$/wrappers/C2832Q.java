package p034j$.wrappers;

import java.util.function.IntConsumer;
import p034j$.util.function.InterfaceC2460l;
/* renamed from: j$.wrappers.Q */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2832Q implements IntConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2460l f1151a;

    private /* synthetic */ C2832Q(InterfaceC2460l interfaceC2460l) {
        this.f1151a = interfaceC2460l;
    }

    /* renamed from: a */
    public static /* synthetic */ IntConsumer m179a(InterfaceC2460l interfaceC2460l) {
        if (interfaceC2460l == null) {
            return null;
        }
        return interfaceC2460l instanceof C2831P ? ((C2831P) interfaceC2460l).f1150a : new C2832Q(interfaceC2460l);
    }

    @Override // java.util.function.IntConsumer
    public /* synthetic */ void accept(int i) {
        this.f1151a.accept(i);
    }

    @Override // java.util.function.IntConsumer
    public /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return m179a(this.f1151a.mo180l(C2831P.m181b(intConsumer)));
    }
}
