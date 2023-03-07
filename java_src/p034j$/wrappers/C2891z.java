package p034j$.wrappers;

import java.util.function.DoubleConsumer;
import p034j$.util.function.InterfaceC2454f;
/* renamed from: j$.wrappers.z */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2891z implements InterfaceC2454f {

    /* renamed from: a */
    final /* synthetic */ DoubleConsumer f1210a;

    private /* synthetic */ C2891z(DoubleConsumer doubleConsumer) {
        this.f1210a = doubleConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2454f m103b(DoubleConsumer doubleConsumer) {
        if (doubleConsumer == null) {
            return null;
        }
        return doubleConsumer instanceof C2801A ? ((C2801A) doubleConsumer).f1120a : new C2891z(doubleConsumer);
    }

    @Override // p034j$.util.function.InterfaceC2454f
    public /* synthetic */ void accept(double d) {
        this.f1210a.accept(d);
    }

    @Override // p034j$.util.function.InterfaceC2454f
    /* renamed from: j */
    public /* synthetic */ InterfaceC2454f mo102j(InterfaceC2454f interfaceC2454f) {
        return m103b(this.f1210a.andThen(C2801A.m247a(interfaceC2454f)));
    }
}
