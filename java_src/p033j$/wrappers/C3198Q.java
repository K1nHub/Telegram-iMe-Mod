package p033j$.wrappers;

import java.util.function.IntConsumer;
import p033j$.util.function.InterfaceC2826l;
/* renamed from: j$.wrappers.Q */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3198Q implements IntConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2826l f1242a;

    private /* synthetic */ C3198Q(InterfaceC2826l interfaceC2826l) {
        this.f1242a = interfaceC2826l;
    }

    /* renamed from: a */
    public static /* synthetic */ IntConsumer m164a(InterfaceC2826l interfaceC2826l) {
        if (interfaceC2826l == null) {
            return null;
        }
        return interfaceC2826l instanceof C3197P ? ((C3197P) interfaceC2826l).f1241a : new C3198Q(interfaceC2826l);
    }

    @Override // java.util.function.IntConsumer
    public /* synthetic */ void accept(int i) {
        this.f1242a.accept(i);
    }

    @Override // java.util.function.IntConsumer
    public /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return m164a(this.f1242a.mo165l(C3197P.m166b(intConsumer)));
    }
}
