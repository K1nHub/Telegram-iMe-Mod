package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2538a;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.C2577e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2578f;
/* renamed from: j$.util.stream.E4 */
/* loaded from: classes2.dex */
final class C2644E4 extends AbstractC2662H4 implements InterfaceC2611s.InterfaceC2612a, InterfaceC2578f {

    /* renamed from: e */
    double f727e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2644E4(InterfaceC2611s.InterfaceC2612a interfaceC2612a, long j, long j2) {
        super(interfaceC2612a, j, j2);
    }

    C2644E4(InterfaceC2611s.InterfaceC2612a interfaceC2612a, C2644E4 c2644e4) {
        super(interfaceC2612a, c2644e4);
    }

    @Override // p034j$.util.function.InterfaceC2578f
    public void accept(double d) {
        this.f727e = d;
    }

    @Override // p034j$.util.InterfaceC2611s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return AbstractC2538a.m617j(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2538a.m625b(this, consumer);
    }

    @Override // p034j$.util.function.InterfaceC2578f
    /* renamed from: j */
    public InterfaceC2578f mo102j(InterfaceC2578f interfaceC2578f) {
        Objects.requireNonNull(interfaceC2578f);
        return new C2577e(this, interfaceC2578f);
    }

    @Override // p034j$.util.stream.AbstractC2674J4
    /* renamed from: q */
    protected InterfaceC2611s mo514q(InterfaceC2611s interfaceC2611s) {
        return new C2644E4((InterfaceC2611s.InterfaceC2612a) interfaceC2611s, this);
    }

    @Override // p034j$.util.stream.AbstractC2662H4
    /* renamed from: s */
    protected void mo517s(Object obj) {
        ((InterfaceC2578f) obj).accept(this.f727e);
    }

    @Override // p034j$.util.stream.AbstractC2662H4
    /* renamed from: t */
    protected AbstractC2821j4 mo516t(int i) {
        return new C2803g4(i);
    }
}
