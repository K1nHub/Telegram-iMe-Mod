package p033j$.wrappers;

import java.util.function.DoubleConsumer;
import p033j$.util.function.InterfaceC2816f;
/* renamed from: j$.wrappers.z */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3246z implements DoubleConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2816f f1349a;

    private /* synthetic */ C3246z(InterfaceC2816f interfaceC2816f) {
        this.f1349a = interfaceC2816f;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleConsumer m154a(InterfaceC2816f interfaceC2816f) {
        if (interfaceC2816f == null) {
            return null;
        }
        return interfaceC2816f instanceof C3244y ? ((C3244y) interfaceC2816f).f1347a : new C3246z(interfaceC2816f);
    }

    @Override // java.util.function.DoubleConsumer
    public /* synthetic */ void accept(double d) {
        this.f1349a.accept(d);
    }

    @Override // java.util.function.DoubleConsumer
    public /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return m154a(this.f1349a.mo156j(C3244y.m157b(doubleConsumer)));
    }
}
