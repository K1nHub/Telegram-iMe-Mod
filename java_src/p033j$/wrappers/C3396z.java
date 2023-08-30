package p033j$.wrappers;

import java.util.function.DoubleConsumer;
import p033j$.util.function.InterfaceC2959f;
/* renamed from: j$.wrappers.z */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3396z implements InterfaceC2959f {

    /* renamed from: a */
    final /* synthetic */ DoubleConsumer f1314a;

    private /* synthetic */ C3396z(DoubleConsumer doubleConsumer) {
        this.f1314a = doubleConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2959f m106b(DoubleConsumer doubleConsumer) {
        if (doubleConsumer == null) {
            return null;
        }
        return doubleConsumer instanceof C3306A ? ((C3306A) doubleConsumer).f1224a : new C3396z(doubleConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2959f
    public /* synthetic */ void accept(double d) {
        this.f1314a.accept(d);
    }

    @Override // p033j$.util.function.InterfaceC2959f
    /* renamed from: j */
    public /* synthetic */ InterfaceC2959f mo105j(InterfaceC2959f interfaceC2959f) {
        return m106b(this.f1314a.andThen(C3306A.m250a(interfaceC2959f)));
    }
}
