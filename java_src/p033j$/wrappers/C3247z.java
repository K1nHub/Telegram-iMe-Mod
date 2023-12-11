package p033j$.wrappers;

import java.util.function.DoubleConsumer;
import p033j$.util.function.InterfaceC2817f;
/* renamed from: j$.wrappers.z */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3247z implements DoubleConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2817f f1349a;

    private /* synthetic */ C3247z(InterfaceC2817f interfaceC2817f) {
        this.f1349a = interfaceC2817f;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleConsumer m156a(InterfaceC2817f interfaceC2817f) {
        if (interfaceC2817f == null) {
            return null;
        }
        return interfaceC2817f instanceof C3245y ? ((C3245y) interfaceC2817f).f1347a : new C3247z(interfaceC2817f);
    }

    @Override // java.util.function.DoubleConsumer
    public /* synthetic */ void accept(double d) {
        this.f1349a.accept(d);
    }

    @Override // java.util.function.DoubleConsumer
    public /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return m156a(this.f1349a.mo158j(C3245y.m159b(doubleConsumer)));
    }
}
