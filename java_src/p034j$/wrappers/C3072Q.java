package p034j$.wrappers;

import java.util.function.IntConsumer;
import p034j$.util.function.InterfaceC2700l;
/* renamed from: j$.wrappers.Q */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3072Q implements IntConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2700l f1160a;

    private /* synthetic */ C3072Q(InterfaceC2700l interfaceC2700l) {
        this.f1160a = interfaceC2700l;
    }

    /* renamed from: a */
    public static /* synthetic */ IntConsumer m164a(InterfaceC2700l interfaceC2700l) {
        if (interfaceC2700l == null) {
            return null;
        }
        return interfaceC2700l instanceof C3071P ? ((C3071P) interfaceC2700l).f1159a : new C3072Q(interfaceC2700l);
    }

    @Override // java.util.function.IntConsumer
    public /* synthetic */ void accept(int i) {
        this.f1160a.accept(i);
    }

    @Override // java.util.function.IntConsumer
    public /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return m164a(this.f1160a.mo165l(C3071P.m166b(intConsumer)));
    }
}
