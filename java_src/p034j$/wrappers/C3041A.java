package p034j$.wrappers;

import java.util.function.DoubleConsumer;
import p034j$.util.function.InterfaceC2694f;
/* renamed from: j$.wrappers.A */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3041A implements DoubleConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2694f f1129a;

    private /* synthetic */ C3041A(InterfaceC2694f interfaceC2694f) {
        this.f1129a = interfaceC2694f;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleConsumer m232a(InterfaceC2694f interfaceC2694f) {
        if (interfaceC2694f == null) {
            return null;
        }
        return interfaceC2694f instanceof C3131z ? ((C3131z) interfaceC2694f).f1219a : new C3041A(interfaceC2694f);
    }

    @Override // java.util.function.DoubleConsumer
    public /* synthetic */ void accept(double d) {
        this.f1129a.accept(d);
    }

    @Override // java.util.function.DoubleConsumer
    public /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return m232a(this.f1129a.mo87j(C3131z.m88b(doubleConsumer)));
    }
}
