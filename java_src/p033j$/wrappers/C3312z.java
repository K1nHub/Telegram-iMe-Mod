package p033j$.wrappers;

import java.util.function.DoubleConsumer;
import p033j$.util.function.InterfaceC2875f;
/* renamed from: j$.wrappers.z */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3312z implements InterfaceC2875f {

    /* renamed from: a */
    final /* synthetic */ DoubleConsumer f1305a;

    private /* synthetic */ C3312z(DoubleConsumer doubleConsumer) {
        this.f1305a = doubleConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2875f m106b(DoubleConsumer doubleConsumer) {
        if (doubleConsumer == null) {
            return null;
        }
        return doubleConsumer instanceof C3222A ? ((C3222A) doubleConsumer).f1215a : new C3312z(doubleConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2875f
    public /* synthetic */ void accept(double d) {
        this.f1305a.accept(d);
    }

    @Override // p033j$.util.function.InterfaceC2875f
    /* renamed from: j */
    public /* synthetic */ InterfaceC2875f mo105j(InterfaceC2875f interfaceC2875f) {
        return m106b(this.f1305a.andThen(C3222A.m250a(interfaceC2875f)));
    }
}
