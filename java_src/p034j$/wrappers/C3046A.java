package p034j$.wrappers;

import java.util.function.DoubleConsumer;
import p034j$.util.function.InterfaceC2699f;
/* renamed from: j$.wrappers.A */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3046A implements DoubleConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2699f f1129a;

    private /* synthetic */ C3046A(InterfaceC2699f interfaceC2699f) {
        this.f1129a = interfaceC2699f;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleConsumer m232a(InterfaceC2699f interfaceC2699f) {
        if (interfaceC2699f == null) {
            return null;
        }
        return interfaceC2699f instanceof C3136z ? ((C3136z) interfaceC2699f).f1219a : new C3046A(interfaceC2699f);
    }

    @Override // java.util.function.DoubleConsumer
    public /* synthetic */ void accept(double d) {
        this.f1129a.accept(d);
    }

    @Override // java.util.function.DoubleConsumer
    public /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return m232a(this.f1129a.mo87j(C3136z.m88b(doubleConsumer)));
    }
}
