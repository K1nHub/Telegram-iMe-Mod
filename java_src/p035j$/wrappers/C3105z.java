package p035j$.wrappers;

import java.util.function.DoubleConsumer;
import p035j$.util.function.InterfaceC2668f;
/* renamed from: j$.wrappers.z */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3105z implements InterfaceC2668f {

    /* renamed from: a */
    final /* synthetic */ DoubleConsumer f1221a;

    private /* synthetic */ C3105z(DoubleConsumer doubleConsumer) {
        this.f1221a = doubleConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2668f m97b(DoubleConsumer doubleConsumer) {
        if (doubleConsumer == null) {
            return null;
        }
        return doubleConsumer instanceof C3015A ? ((C3015A) doubleConsumer).f1131a : new C3105z(doubleConsumer);
    }

    @Override // p035j$.util.function.InterfaceC2668f
    public /* synthetic */ void accept(double d) {
        this.f1221a.accept(d);
    }

    @Override // p035j$.util.function.InterfaceC2668f
    /* renamed from: j */
    public /* synthetic */ InterfaceC2668f mo96j(InterfaceC2668f interfaceC2668f) {
        return m97b(this.f1221a.andThen(C3015A.m241a(interfaceC2668f)));
    }
}
