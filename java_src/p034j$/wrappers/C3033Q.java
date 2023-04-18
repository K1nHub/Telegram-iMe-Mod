package p034j$.wrappers;

import java.util.function.IntConsumer;
import p034j$.util.function.InterfaceC2661l;
/* renamed from: j$.wrappers.Q */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3033Q implements IntConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2661l f1157a;

    private /* synthetic */ C3033Q(InterfaceC2661l interfaceC2661l) {
        this.f1157a = interfaceC2661l;
    }

    /* renamed from: a */
    public static /* synthetic */ IntConsumer m159a(InterfaceC2661l interfaceC2661l) {
        if (interfaceC2661l == null) {
            return null;
        }
        return interfaceC2661l instanceof C3032P ? ((C3032P) interfaceC2661l).f1156a : new C3033Q(interfaceC2661l);
    }

    @Override // java.util.function.IntConsumer
    public /* synthetic */ void accept(int i) {
        this.f1157a.accept(i);
    }

    @Override // java.util.function.IntConsumer
    public /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return m159a(this.f1157a.mo160l(C3032P.m161b(intConsumer)));
    }
}
