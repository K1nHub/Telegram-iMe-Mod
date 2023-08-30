package p033j$.wrappers;

import java.util.function.DoubleConsumer;
import p033j$.util.function.InterfaceC2959f;
/* renamed from: j$.wrappers.A */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3306A implements DoubleConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2959f f1224a;

    private /* synthetic */ C3306A(InterfaceC2959f interfaceC2959f) {
        this.f1224a = interfaceC2959f;
    }

    /* renamed from: a */
    public static /* synthetic */ DoubleConsumer m250a(InterfaceC2959f interfaceC2959f) {
        if (interfaceC2959f == null) {
            return null;
        }
        return interfaceC2959f instanceof C3396z ? ((C3396z) interfaceC2959f).f1314a : new C3306A(interfaceC2959f);
    }

    @Override // java.util.function.DoubleConsumer
    public /* synthetic */ void accept(double d) {
        this.f1224a.accept(d);
    }

    @Override // java.util.function.DoubleConsumer
    public /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        return m250a(this.f1224a.mo105j(C3396z.m106b(doubleConsumer)));
    }
}
