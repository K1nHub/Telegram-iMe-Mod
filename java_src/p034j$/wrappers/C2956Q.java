package p034j$.wrappers;

import java.util.function.IntConsumer;
import p034j$.util.function.InterfaceC2584l;
/* renamed from: j$.wrappers.Q */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2956Q implements IntConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2584l f1156a;

    private /* synthetic */ C2956Q(InterfaceC2584l interfaceC2584l) {
        this.f1156a = interfaceC2584l;
    }

    /* renamed from: a */
    public static /* synthetic */ IntConsumer m179a(InterfaceC2584l interfaceC2584l) {
        if (interfaceC2584l == null) {
            return null;
        }
        return interfaceC2584l instanceof C2955P ? ((C2955P) interfaceC2584l).f1155a : new C2956Q(interfaceC2584l);
    }

    @Override // java.util.function.IntConsumer
    public /* synthetic */ void accept(int i) {
        this.f1156a.accept(i);
    }

    @Override // java.util.function.IntConsumer
    public /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return m179a(this.f1156a.mo180l(C2955P.m181b(intConsumer)));
    }
}
