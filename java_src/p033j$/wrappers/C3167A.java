package p033j$.wrappers;

import java.util.function.DoubleConsumer;
import p033j$.util.function.InterfaceC2820f;
/* renamed from: j$.wrappers.A */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3167A implements DoubleConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2820f f1211a;

    private /* synthetic */ C3167A(InterfaceC2820f interfaceC2820f) {
        this.f1211a = interfaceC2820f;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleConsumer m232a(InterfaceC2820f interfaceC2820f) {
        if (interfaceC2820f == null) {
            return null;
        }
        return interfaceC2820f instanceof C3257z ? ((C3257z) interfaceC2820f).f1301a : new C3167A(interfaceC2820f);
    }

    @Override // java.util.function.DoubleConsumer
    public /* synthetic */ void accept(double d) {
        this.f1211a.accept(d);
    }

    @Override // java.util.function.DoubleConsumer
    public /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return m232a(this.f1211a.mo87j(C3257z.m88b(doubleConsumer)));
    }
}
