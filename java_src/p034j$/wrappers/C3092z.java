package p034j$.wrappers;

import java.util.function.DoubleConsumer;
import p034j$.util.function.InterfaceC2655f;
/* renamed from: j$.wrappers.z */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3092z implements InterfaceC2655f {

    /* renamed from: a */
    final /* synthetic */ DoubleConsumer f1216a;

    private /* synthetic */ C3092z(DoubleConsumer doubleConsumer) {
        this.f1216a = doubleConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2655f m83b(DoubleConsumer doubleConsumer) {
        if (doubleConsumer == null) {
            return null;
        }
        return doubleConsumer instanceof C3002A ? ((C3002A) doubleConsumer).f1126a : new C3092z(doubleConsumer);
    }

    @Override // p034j$.util.function.InterfaceC2655f
    public /* synthetic */ void accept(double d) {
        this.f1216a.accept(d);
    }

    @Override // p034j$.util.function.InterfaceC2655f
    /* renamed from: j */
    public /* synthetic */ InterfaceC2655f mo82j(InterfaceC2655f interfaceC2655f) {
        return m83b(this.f1216a.andThen(C3002A.m227a(interfaceC2655f)));
    }
}
