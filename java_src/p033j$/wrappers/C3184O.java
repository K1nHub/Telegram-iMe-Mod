package p033j$.wrappers;

import java.util.function.IntConsumer;
import p033j$.util.function.InterfaceC2821l;
/* renamed from: j$.wrappers.O */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3184O implements IntConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2821l f1288a;

    private /* synthetic */ C3184O(InterfaceC2821l interfaceC2821l) {
        this.f1288a = interfaceC2821l;
    }

    /* renamed from: a */
    public static /* synthetic */ IntConsumer m237a(InterfaceC2821l interfaceC2821l) {
        if (interfaceC2821l == null) {
            return null;
        }
        return interfaceC2821l instanceof C3183N ? ((C3183N) interfaceC2821l).f1287a : new C3184O(interfaceC2821l);
    }

    @Override // java.util.function.IntConsumer
    public /* synthetic */ void accept(int i) {
        this.f1288a.accept(i);
    }

    @Override // java.util.function.IntConsumer
    public /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return m237a(this.f1288a.mo238k(C3183N.m239b(intConsumer)));
    }
}
