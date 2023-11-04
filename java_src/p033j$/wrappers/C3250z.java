package p033j$.wrappers;

import java.util.function.DoubleConsumer;
import p033j$.util.function.InterfaceC2820f;
/* renamed from: j$.wrappers.z */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3250z implements DoubleConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2820f f1349a;

    private /* synthetic */ C3250z(InterfaceC2820f interfaceC2820f) {
        this.f1349a = interfaceC2820f;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleConsumer m156a(InterfaceC2820f interfaceC2820f) {
        if (interfaceC2820f == null) {
            return null;
        }
        return interfaceC2820f instanceof C3248y ? ((C3248y) interfaceC2820f).f1347a : new C3250z(interfaceC2820f);
    }

    @Override // java.util.function.DoubleConsumer
    public /* synthetic */ void accept(double d) {
        this.f1349a.accept(d);
    }

    @Override // java.util.function.DoubleConsumer
    public /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return m156a(this.f1349a.mo158j(C3248y.m159b(doubleConsumer)));
    }
}
