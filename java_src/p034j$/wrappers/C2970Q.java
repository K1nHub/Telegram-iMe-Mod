package p034j$.wrappers;

import java.util.function.IntConsumer;
import p034j$.util.function.InterfaceC2598l;
/* renamed from: j$.wrappers.Q */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2970Q implements IntConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2598l f1157a;

    private /* synthetic */ C2970Q(InterfaceC2598l interfaceC2598l) {
        this.f1157a = interfaceC2598l;
    }

    /* renamed from: a */
    public static /* synthetic */ IntConsumer m178a(InterfaceC2598l interfaceC2598l) {
        if (interfaceC2598l == null) {
            return null;
        }
        return interfaceC2598l instanceof C2969P ? ((C2969P) interfaceC2598l).f1156a : new C2970Q(interfaceC2598l);
    }

    @Override // java.util.function.IntConsumer
    public /* synthetic */ void accept(int i) {
        this.f1157a.accept(i);
    }

    @Override // java.util.function.IntConsumer
    public /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return m178a(this.f1157a.mo179l(C2969P.m180b(intConsumer)));
    }
}
