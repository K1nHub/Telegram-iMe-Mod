package p033j$.wrappers;

import java.util.function.DoubleConsumer;
import p033j$.util.function.InterfaceC2820f;
/* renamed from: j$.wrappers.y */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3248y implements InterfaceC2820f {

    /* renamed from: a */
    final /* synthetic */ DoubleConsumer f1347a;

    private /* synthetic */ C3248y(DoubleConsumer doubleConsumer) {
        this.f1347a = doubleConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2820f m159b(DoubleConsumer doubleConsumer) {
        if (doubleConsumer == null) {
            return null;
        }
        return doubleConsumer instanceof C3250z ? ((C3250z) doubleConsumer).f1349a : new C3248y(doubleConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2820f
    public /* synthetic */ void accept(double d) {
        this.f1347a.accept(d);
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public /* synthetic */ InterfaceC2820f mo158j(InterfaceC2820f interfaceC2820f) {
        return m159b(this.f1347a.andThen(C3250z.m156a(interfaceC2820f)));
    }
}
