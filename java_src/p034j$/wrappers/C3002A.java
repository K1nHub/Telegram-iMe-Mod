package p034j$.wrappers;

import java.util.function.DoubleConsumer;
import p034j$.util.function.InterfaceC2655f;
/* renamed from: j$.wrappers.A */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3002A implements DoubleConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2655f f1126a;

    private /* synthetic */ C3002A(InterfaceC2655f interfaceC2655f) {
        this.f1126a = interfaceC2655f;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleConsumer m227a(InterfaceC2655f interfaceC2655f) {
        if (interfaceC2655f == null) {
            return null;
        }
        return interfaceC2655f instanceof C3092z ? ((C3092z) interfaceC2655f).f1216a : new C3002A(interfaceC2655f);
    }

    @Override // java.util.function.DoubleConsumer
    public /* synthetic */ void accept(double d) {
        this.f1126a.accept(d);
    }

    @Override // java.util.function.DoubleConsumer
    public /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return m227a(this.f1126a.mo82j(C3092z.m83b(doubleConsumer)));
    }
}
