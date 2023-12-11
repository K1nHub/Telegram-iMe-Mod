package p033j$.wrappers;

import java.util.function.DoubleConsumer;
import p033j$.util.function.InterfaceC2817f;
/* renamed from: j$.wrappers.y */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3245y implements InterfaceC2817f {

    /* renamed from: a */
    final /* synthetic */ DoubleConsumer f1347a;

    private /* synthetic */ C3245y(DoubleConsumer doubleConsumer) {
        this.f1347a = doubleConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2817f m159b(DoubleConsumer doubleConsumer) {
        if (doubleConsumer == null) {
            return null;
        }
        return doubleConsumer instanceof C3247z ? ((C3247z) doubleConsumer).f1349a : new C3245y(doubleConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2817f
    public /* synthetic */ void accept(double d) {
        this.f1347a.accept(d);
    }

    @Override // p033j$.util.function.InterfaceC2817f
    /* renamed from: j */
    public /* synthetic */ InterfaceC2817f mo158j(InterfaceC2817f interfaceC2817f) {
        return m159b(this.f1347a.andThen(C3247z.m156a(interfaceC2817f)));
    }
}
