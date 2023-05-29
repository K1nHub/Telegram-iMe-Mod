package p034j$.wrappers;

import java.util.function.DoubleConsumer;
import p034j$.util.function.InterfaceC2699f;
/* renamed from: j$.wrappers.z */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3136z implements InterfaceC2699f {

    /* renamed from: a */
    final /* synthetic */ DoubleConsumer f1219a;

    private /* synthetic */ C3136z(DoubleConsumer doubleConsumer) {
        this.f1219a = doubleConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2699f m88b(DoubleConsumer doubleConsumer) {
        if (doubleConsumer == null) {
            return null;
        }
        return doubleConsumer instanceof C3046A ? ((C3046A) doubleConsumer).f1129a : new C3136z(doubleConsumer);
    }

    @Override // p034j$.util.function.InterfaceC2699f
    public /* synthetic */ void accept(double d) {
        this.f1219a.accept(d);
    }

    @Override // p034j$.util.function.InterfaceC2699f
    /* renamed from: j */
    public /* synthetic */ InterfaceC2699f mo87j(InterfaceC2699f interfaceC2699f) {
        return m88b(this.f1219a.andThen(C3046A.m232a(interfaceC2699f)));
    }
}
