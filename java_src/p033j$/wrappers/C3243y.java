package p033j$.wrappers;

import java.util.function.DoubleConsumer;
import p033j$.util.function.InterfaceC2815f;
/* renamed from: j$.wrappers.y */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3243y implements InterfaceC2815f {

    /* renamed from: a */
    final /* synthetic */ DoubleConsumer f1347a;

    private /* synthetic */ C3243y(DoubleConsumer doubleConsumer) {
        this.f1347a = doubleConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2815f m162b(DoubleConsumer doubleConsumer) {
        if (doubleConsumer == null) {
            return null;
        }
        return doubleConsumer instanceof C3245z ? ((C3245z) doubleConsumer).f1349a : new C3243y(doubleConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2815f
    public /* synthetic */ void accept(double d) {
        this.f1347a.accept(d);
    }

    @Override // p033j$.util.function.InterfaceC2815f
    /* renamed from: j */
    public /* synthetic */ InterfaceC2815f mo161j(InterfaceC2815f interfaceC2815f) {
        return m162b(this.f1347a.andThen(C3245z.m159a(interfaceC2815f)));
    }
}
