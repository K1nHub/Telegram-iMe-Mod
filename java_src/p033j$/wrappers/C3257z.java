package p033j$.wrappers;

import java.util.function.DoubleConsumer;
import p033j$.util.function.InterfaceC2820f;
/* renamed from: j$.wrappers.z */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3257z implements InterfaceC2820f {

    /* renamed from: a */
    final /* synthetic */ DoubleConsumer f1301a;

    private /* synthetic */ C3257z(DoubleConsumer doubleConsumer) {
        this.f1301a = doubleConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2820f m88b(DoubleConsumer doubleConsumer) {
        if (doubleConsumer == null) {
            return null;
        }
        return doubleConsumer instanceof C3167A ? ((C3167A) doubleConsumer).f1211a : new C3257z(doubleConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2820f
    public /* synthetic */ void accept(double d) {
        this.f1301a.accept(d);
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public /* synthetic */ InterfaceC2820f mo87j(InterfaceC2820f interfaceC2820f) {
        return m88b(this.f1301a.andThen(C3167A.m232a(interfaceC2820f)));
    }
}
