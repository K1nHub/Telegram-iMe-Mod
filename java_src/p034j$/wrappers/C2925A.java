package p034j$.wrappers;

import java.util.function.DoubleConsumer;
import p034j$.util.function.InterfaceC2578f;
/* renamed from: j$.wrappers.A */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2925A implements DoubleConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2578f f1125a;

    private /* synthetic */ C2925A(InterfaceC2578f interfaceC2578f) {
        this.f1125a = interfaceC2578f;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleConsumer m247a(InterfaceC2578f interfaceC2578f) {
        if (interfaceC2578f == null) {
            return null;
        }
        return interfaceC2578f instanceof C3015z ? ((C3015z) interfaceC2578f).f1215a : new C2925A(interfaceC2578f);
    }

    @Override // java.util.function.DoubleConsumer
    public /* synthetic */ void accept(double d) {
        this.f1125a.accept(d);
    }

    @Override // java.util.function.DoubleConsumer
    public /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return m247a(this.f1125a.mo102j(C3015z.m103b(doubleConsumer)));
    }
}
