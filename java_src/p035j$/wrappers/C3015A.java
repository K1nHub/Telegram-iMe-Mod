package p035j$.wrappers;

import java.util.function.DoubleConsumer;
import p035j$.util.function.InterfaceC2668f;
/* renamed from: j$.wrappers.A */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3015A implements DoubleConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2668f f1131a;

    private /* synthetic */ C3015A(InterfaceC2668f interfaceC2668f) {
        this.f1131a = interfaceC2668f;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleConsumer m241a(InterfaceC2668f interfaceC2668f) {
        if (interfaceC2668f == null) {
            return null;
        }
        return interfaceC2668f instanceof C3105z ? ((C3105z) interfaceC2668f).f1221a : new C3015A(interfaceC2668f);
    }

    @Override // java.util.function.DoubleConsumer
    public /* synthetic */ void accept(double d) {
        this.f1131a.accept(d);
    }

    @Override // java.util.function.DoubleConsumer
    public /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return m241a(this.f1131a.mo96j(C3105z.m97b(doubleConsumer)));
    }
}
