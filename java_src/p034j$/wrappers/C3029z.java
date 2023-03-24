package p034j$.wrappers;

import java.util.function.DoubleConsumer;
import p034j$.util.function.InterfaceC2592f;
/* renamed from: j$.wrappers.z */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3029z implements InterfaceC2592f {

    /* renamed from: a */
    final /* synthetic */ DoubleConsumer f1216a;

    private /* synthetic */ C3029z(DoubleConsumer doubleConsumer) {
        this.f1216a = doubleConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2592f m102b(DoubleConsumer doubleConsumer) {
        if (doubleConsumer == null) {
            return null;
        }
        return doubleConsumer instanceof C2939A ? ((C2939A) doubleConsumer).f1126a : new C3029z(doubleConsumer);
    }

    @Override // p034j$.util.function.InterfaceC2592f
    public /* synthetic */ void accept(double d) {
        this.f1216a.accept(d);
    }

    @Override // p034j$.util.function.InterfaceC2592f
    /* renamed from: j */
    public /* synthetic */ InterfaceC2592f mo101j(InterfaceC2592f interfaceC2592f) {
        return m102b(this.f1216a.andThen(C2939A.m246a(interfaceC2592f)));
    }
}
