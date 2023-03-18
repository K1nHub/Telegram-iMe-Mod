package p034j$.wrappers;

import java.util.function.DoubleConsumer;
import p034j$.util.function.InterfaceC2578f;
/* renamed from: j$.wrappers.z */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3015z implements InterfaceC2578f {

    /* renamed from: a */
    final /* synthetic */ DoubleConsumer f1215a;

    private /* synthetic */ C3015z(DoubleConsumer doubleConsumer) {
        this.f1215a = doubleConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2578f m103b(DoubleConsumer doubleConsumer) {
        if (doubleConsumer == null) {
            return null;
        }
        return doubleConsumer instanceof C2925A ? ((C2925A) doubleConsumer).f1125a : new C3015z(doubleConsumer);
    }

    @Override // p034j$.util.function.InterfaceC2578f
    public /* synthetic */ void accept(double d) {
        this.f1215a.accept(d);
    }

    @Override // p034j$.util.function.InterfaceC2578f
    /* renamed from: j */
    public /* synthetic */ InterfaceC2578f mo102j(InterfaceC2578f interfaceC2578f) {
        return m103b(this.f1215a.andThen(C2925A.m247a(interfaceC2578f)));
    }
}
