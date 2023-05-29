package p034j$.wrappers;

import java.util.function.IntConsumer;
import p034j$.util.function.InterfaceC2705l;
/* renamed from: j$.wrappers.Q */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3077Q implements IntConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2705l f1160a;

    private /* synthetic */ C3077Q(InterfaceC2705l interfaceC2705l) {
        this.f1160a = interfaceC2705l;
    }

    /* renamed from: a */
    public static /* synthetic */ IntConsumer m164a(InterfaceC2705l interfaceC2705l) {
        if (interfaceC2705l == null) {
            return null;
        }
        return interfaceC2705l instanceof C3076P ? ((C3076P) interfaceC2705l).f1159a : new C3077Q(interfaceC2705l);
    }

    @Override // java.util.function.IntConsumer
    public /* synthetic */ void accept(int i) {
        this.f1160a.accept(i);
    }

    @Override // java.util.function.IntConsumer
    public /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return m164a(this.f1160a.mo165l(C3076P.m166b(intConsumer)));
    }
}
