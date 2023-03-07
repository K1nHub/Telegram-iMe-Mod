package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2414a;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.C2453e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2454f;
/* renamed from: j$.util.stream.E4 */
/* loaded from: classes2.dex */
final class C2520E4 extends AbstractC2538H4 implements InterfaceC2487s.InterfaceC2488a, InterfaceC2454f {

    /* renamed from: e */
    double f722e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2520E4(InterfaceC2487s.InterfaceC2488a interfaceC2488a, long j, long j2) {
        super(interfaceC2488a, j, j2);
    }

    C2520E4(InterfaceC2487s.InterfaceC2488a interfaceC2488a, C2520E4 c2520e4) {
        super(interfaceC2488a, c2520e4);
    }

    @Override // p034j$.util.function.InterfaceC2454f
    public void accept(double d) {
        this.f722e = d;
    }

    @Override // p034j$.util.InterfaceC2487s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return AbstractC2414a.m617j(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2414a.m625b(this, consumer);
    }

    @Override // p034j$.util.function.InterfaceC2454f
    /* renamed from: j */
    public InterfaceC2454f mo102j(InterfaceC2454f interfaceC2454f) {
        Objects.requireNonNull(interfaceC2454f);
        return new C2453e(this, interfaceC2454f);
    }

    @Override // p034j$.util.stream.AbstractC2550J4
    /* renamed from: q */
    protected InterfaceC2487s mo514q(InterfaceC2487s interfaceC2487s) {
        return new C2520E4((InterfaceC2487s.InterfaceC2488a) interfaceC2487s, this);
    }

    @Override // p034j$.util.stream.AbstractC2538H4
    /* renamed from: s */
    protected void mo517s(Object obj) {
        ((InterfaceC2454f) obj).accept(this.f722e);
    }

    @Override // p034j$.util.stream.AbstractC2538H4
    /* renamed from: t */
    protected AbstractC2697j4 mo516t(int i) {
        return new C2679g4(i);
    }
}
