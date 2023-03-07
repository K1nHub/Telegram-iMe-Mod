package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2414a;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.C2459k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2460l;
/* renamed from: j$.util.stream.F4 */
/* loaded from: classes2.dex */
final class C2526F4 extends AbstractC2538H4 implements InterfaceC2487s.InterfaceC2489b, InterfaceC2460l {

    /* renamed from: e */
    int f733e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2526F4(InterfaceC2487s.InterfaceC2489b interfaceC2489b, long j, long j2) {
        super(interfaceC2489b, j, j2);
    }

    C2526F4(InterfaceC2487s.InterfaceC2489b interfaceC2489b, C2526F4 c2526f4) {
        super(interfaceC2489b, c2526f4);
    }

    @Override // p034j$.util.function.InterfaceC2460l
    public void accept(int i) {
        this.f733e = i;
    }

    @Override // p034j$.util.InterfaceC2487s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return AbstractC2414a.m616k(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2414a.m624c(this, consumer);
    }

    @Override // p034j$.util.function.InterfaceC2460l
    /* renamed from: l */
    public InterfaceC2460l mo180l(InterfaceC2460l interfaceC2460l) {
        Objects.requireNonNull(interfaceC2460l);
        return new C2459k(this, interfaceC2460l);
    }

    @Override // p034j$.util.stream.AbstractC2550J4
    /* renamed from: q */
    protected InterfaceC2487s mo514q(InterfaceC2487s interfaceC2487s) {
        return new C2526F4((InterfaceC2487s.InterfaceC2489b) interfaceC2487s, this);
    }

    @Override // p034j$.util.stream.AbstractC2538H4
    /* renamed from: s */
    protected void mo517s(Object obj) {
        ((InterfaceC2460l) obj).accept(this.f733e);
    }

    @Override // p034j$.util.stream.AbstractC2538H4
    /* renamed from: t */
    protected AbstractC2697j4 mo516t(int i) {
        return new C2685h4(i);
    }
}
