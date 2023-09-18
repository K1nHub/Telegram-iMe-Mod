package p033j$.wrappers;

import java.util.function.DoubleConsumer;
import p033j$.util.function.InterfaceC2875f;
/* renamed from: j$.wrappers.A */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3222A implements DoubleConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2875f f1215a;

    private /* synthetic */ C3222A(InterfaceC2875f interfaceC2875f) {
        this.f1215a = interfaceC2875f;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleConsumer m250a(InterfaceC2875f interfaceC2875f) {
        if (interfaceC2875f == null) {
            return null;
        }
        return interfaceC2875f instanceof C3312z ? ((C3312z) interfaceC2875f).f1305a : new C3222A(interfaceC2875f);
    }

    @Override // java.util.function.DoubleConsumer
    public /* synthetic */ void accept(double d) {
        this.f1215a.accept(d);
    }

    @Override // java.util.function.DoubleConsumer
    public /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return m250a(this.f1215a.mo105j(C3312z.m106b(doubleConsumer)));
    }
}
