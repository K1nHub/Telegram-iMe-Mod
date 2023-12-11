package p033j$.wrappers;

import java.util.function.IntConsumer;
import p033j$.util.function.InterfaceC2823l;
/* renamed from: j$.wrappers.O */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3186O implements IntConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2823l f1288a;

    private /* synthetic */ C3186O(InterfaceC2823l interfaceC2823l) {
        this.f1288a = interfaceC2823l;
    }

    /* renamed from: a */
    public static /* synthetic */ IntConsumer m234a(InterfaceC2823l interfaceC2823l) {
        if (interfaceC2823l == null) {
            return null;
        }
        return interfaceC2823l instanceof C3185N ? ((C3185N) interfaceC2823l).f1287a : new C3186O(interfaceC2823l);
    }

    @Override // java.util.function.IntConsumer
    public /* synthetic */ void accept(int i) {
        this.f1288a.accept(i);
    }

    @Override // java.util.function.IntConsumer
    public /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return m234a(this.f1288a.mo235k(C3185N.m236b(intConsumer)));
    }
}
