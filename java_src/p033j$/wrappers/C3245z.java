package p033j$.wrappers;

import java.util.function.DoubleConsumer;
import p033j$.util.function.InterfaceC2815f;
/* renamed from: j$.wrappers.z */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3245z implements DoubleConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2815f f1349a;

    private /* synthetic */ C3245z(InterfaceC2815f interfaceC2815f) {
        this.f1349a = interfaceC2815f;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleConsumer m159a(InterfaceC2815f interfaceC2815f) {
        if (interfaceC2815f == null) {
            return null;
        }
        return interfaceC2815f instanceof C3243y ? ((C3243y) interfaceC2815f).f1347a : new C3245z(interfaceC2815f);
    }

    @Override // java.util.function.DoubleConsumer
    public /* synthetic */ void accept(double d) {
        this.f1349a.accept(d);
    }

    @Override // java.util.function.DoubleConsumer
    public /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return m159a(this.f1349a.mo161j(C3243y.m162b(doubleConsumer)));
    }
}
