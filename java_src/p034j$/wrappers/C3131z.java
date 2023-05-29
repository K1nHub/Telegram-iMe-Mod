package p034j$.wrappers;

import java.util.function.DoubleConsumer;
import p034j$.util.function.InterfaceC2694f;
/* renamed from: j$.wrappers.z */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3131z implements InterfaceC2694f {

    /* renamed from: a */
    final /* synthetic */ DoubleConsumer f1219a;

    private /* synthetic */ C3131z(DoubleConsumer doubleConsumer) {
        this.f1219a = doubleConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2694f m88b(DoubleConsumer doubleConsumer) {
        if (doubleConsumer == null) {
            return null;
        }
        return doubleConsumer instanceof C3041A ? ((C3041A) doubleConsumer).f1129a : new C3131z(doubleConsumer);
    }

    @Override // p034j$.util.function.InterfaceC2694f
    public /* synthetic */ void accept(double d) {
        this.f1219a.accept(d);
    }

    @Override // p034j$.util.function.InterfaceC2694f
    /* renamed from: j */
    public /* synthetic */ InterfaceC2694f mo87j(InterfaceC2694f interfaceC2694f) {
        return m88b(this.f1219a.andThen(C3041A.m232a(interfaceC2694f)));
    }
}
