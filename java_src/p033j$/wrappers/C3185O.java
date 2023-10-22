package p033j$.wrappers;

import java.util.function.IntConsumer;
import p033j$.util.function.InterfaceC2822l;
/* renamed from: j$.wrappers.O */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3185O implements IntConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2822l f1288a;

    private /* synthetic */ C3185O(InterfaceC2822l interfaceC2822l) {
        this.f1288a = interfaceC2822l;
    }

    /* renamed from: a */
    public static /* synthetic */ IntConsumer m233a(InterfaceC2822l interfaceC2822l) {
        if (interfaceC2822l == null) {
            return null;
        }
        return interfaceC2822l instanceof C3184N ? ((C3184N) interfaceC2822l).f1287a : new C3185O(interfaceC2822l);
    }

    @Override // java.util.function.IntConsumer
    public /* synthetic */ void accept(int i) {
        this.f1288a.accept(i);
    }

    @Override // java.util.function.IntConsumer
    public /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return m233a(this.f1288a.mo234k(C3184N.m235b(intConsumer)));
    }
}
