package p033j$.wrappers;

import java.util.function.IntConsumer;
import p033j$.util.function.InterfaceC2826l;
/* renamed from: j$.wrappers.O */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3189O implements IntConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2826l f1288a;

    private /* synthetic */ C3189O(InterfaceC2826l interfaceC2826l) {
        this.f1288a = interfaceC2826l;
    }

    /* renamed from: a */
    public static /* synthetic */ IntConsumer m234a(InterfaceC2826l interfaceC2826l) {
        if (interfaceC2826l == null) {
            return null;
        }
        return interfaceC2826l instanceof C3188N ? ((C3188N) interfaceC2826l).f1287a : new C3189O(interfaceC2826l);
    }

    @Override // java.util.function.IntConsumer
    public /* synthetic */ void accept(int i) {
        this.f1288a.accept(i);
    }

    @Override // java.util.function.IntConsumer
    public /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return m234a(this.f1288a.mo235k(C3188N.m236b(intConsumer)));
    }
}
