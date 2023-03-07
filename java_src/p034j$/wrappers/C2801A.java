package p034j$.wrappers;

import java.util.function.DoubleConsumer;
import p034j$.util.function.InterfaceC2454f;
/* renamed from: j$.wrappers.A */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2801A implements DoubleConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2454f f1120a;

    private /* synthetic */ C2801A(InterfaceC2454f interfaceC2454f) {
        this.f1120a = interfaceC2454f;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleConsumer m247a(InterfaceC2454f interfaceC2454f) {
        if (interfaceC2454f == null) {
            return null;
        }
        return interfaceC2454f instanceof C2891z ? ((C2891z) interfaceC2454f).f1210a : new C2801A(interfaceC2454f);
    }

    @Override // java.util.function.DoubleConsumer
    public /* synthetic */ void accept(double d) {
        this.f1120a.accept(d);
    }

    @Override // java.util.function.DoubleConsumer
    public /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return m247a(this.f1120a.mo102j(C2891z.m103b(doubleConsumer)));
    }
}
