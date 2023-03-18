package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2538a;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.C2588p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2589q;
/* renamed from: j$.util.stream.G4 */
/* loaded from: classes2.dex */
final class C2656G4 extends AbstractC2662H4 implements InterfaceC2611s.InterfaceC2614c, InterfaceC2589q {

    /* renamed from: e */
    long f746e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2656G4(InterfaceC2611s.InterfaceC2614c interfaceC2614c, long j, long j2) {
        super(interfaceC2614c, j, j2);
    }

    C2656G4(InterfaceC2611s.InterfaceC2614c interfaceC2614c, C2656G4 c2656g4) {
        super(interfaceC2614c, c2656g4);
    }

    @Override // p034j$.util.function.InterfaceC2589q
    public void accept(long j) {
        this.f746e = j;
    }

    @Override // p034j$.util.InterfaceC2611s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return AbstractC2538a.m615l(this, consumer);
    }

    @Override // p034j$.util.function.InterfaceC2589q
    /* renamed from: f */
    public InterfaceC2589q mo155f(InterfaceC2589q interfaceC2589q) {
        Objects.requireNonNull(interfaceC2589q);
        return new C2588p(this, interfaceC2589q);
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2538a.m623d(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2674J4
    /* renamed from: q */
    protected InterfaceC2611s mo514q(InterfaceC2611s interfaceC2611s) {
        return new C2656G4((InterfaceC2611s.InterfaceC2614c) interfaceC2611s, this);
    }

    @Override // p034j$.util.stream.AbstractC2662H4
    /* renamed from: s */
    protected void mo517s(Object obj) {
        ((InterfaceC2589q) obj).accept(this.f746e);
    }

    @Override // p034j$.util.stream.AbstractC2662H4
    /* renamed from: t */
    protected AbstractC2821j4 mo516t(int i) {
        return new C2815i4(i);
    }
}
