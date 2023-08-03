package p033j$.wrappers;

import java.util.function.DoubleConsumer;
import p033j$.util.function.InterfaceC2820f;
/* renamed from: j$.wrappers.A */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3167A implements DoubleConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2820f f1214a;

    private /* synthetic */ C3167A(InterfaceC2820f interfaceC2820f) {
        this.f1214a = interfaceC2820f;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleConsumer m250a(InterfaceC2820f interfaceC2820f) {
        if (interfaceC2820f == null) {
            return null;
        }
        return interfaceC2820f instanceof C3257z ? ((C3257z) interfaceC2820f).f1304a : new C3167A(interfaceC2820f);
    }

    @Override // java.util.function.DoubleConsumer
    public /* synthetic */ void accept(double d) {
        this.f1214a.accept(d);
    }

    @Override // java.util.function.DoubleConsumer
    public /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return m250a(this.f1214a.mo105j(C3257z.m106b(doubleConsumer)));
    }
}
