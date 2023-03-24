package p034j$.wrappers;

import java.util.function.DoubleConsumer;
import p034j$.util.function.InterfaceC2592f;
/* renamed from: j$.wrappers.A */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2939A implements DoubleConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2592f f1126a;

    private /* synthetic */ C2939A(InterfaceC2592f interfaceC2592f) {
        this.f1126a = interfaceC2592f;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleConsumer m246a(InterfaceC2592f interfaceC2592f) {
        if (interfaceC2592f == null) {
            return null;
        }
        return interfaceC2592f instanceof C3029z ? ((C3029z) interfaceC2592f).f1216a : new C2939A(interfaceC2592f);
    }

    @Override // java.util.function.DoubleConsumer
    public /* synthetic */ void accept(double d) {
        this.f1126a.accept(d);
    }

    @Override // java.util.function.DoubleConsumer
    public /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return m246a(this.f1126a.mo101j(C3029z.m102b(doubleConsumer)));
    }
}
