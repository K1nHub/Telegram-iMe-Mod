package p033j$.wrappers;

import java.util.function.DoubleConsumer;
import p033j$.util.function.InterfaceC2816f;
/* renamed from: j$.wrappers.y */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3244y implements InterfaceC2816f {

    /* renamed from: a */
    final /* synthetic */ DoubleConsumer f1347a;

    private /* synthetic */ C3244y(DoubleConsumer doubleConsumer) {
        this.f1347a = doubleConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2816f m157b(DoubleConsumer doubleConsumer) {
        if (doubleConsumer == null) {
            return null;
        }
        return doubleConsumer instanceof C3246z ? ((C3246z) doubleConsumer).f1349a : new C3244y(doubleConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2816f
    public /* synthetic */ void accept(double d) {
        this.f1347a.accept(d);
    }

    @Override // p033j$.util.function.InterfaceC2816f
    /* renamed from: j */
    public /* synthetic */ InterfaceC2816f mo156j(InterfaceC2816f interfaceC2816f) {
        return m157b(this.f1347a.andThen(C3246z.m154a(interfaceC2816f)));
    }
}
