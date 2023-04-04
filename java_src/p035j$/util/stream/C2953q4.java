package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.AbstractC2628a;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2674l;
import p035j$.util.function.InterfaceC2687y;
/* renamed from: j$.util.stream.q4 */
/* loaded from: classes2.dex */
final class C2953q4 extends AbstractC2887f4 implements InterfaceC2701s.InterfaceC2703b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2953q4(AbstractC2999y2 abstractC2999y2, InterfaceC2687y interfaceC2687y, boolean z) {
        super(abstractC2999y2, interfaceC2687y, z);
    }

    C2953q4(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s, boolean z) {
        super(abstractC2999y2, interfaceC2701s, z);
    }

    @Override // p035j$.util.InterfaceC2701s
    /* renamed from: b */
    public /* synthetic */ boolean mo122b(Consumer consumer) {
        return AbstractC2628a.m610k(this, consumer);
    }

    @Override // p035j$.util.InterfaceC3008t
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2674l interfaceC2674l) {
        if (this.f955h != null || this.f956i) {
            do {
            } while (tryAdvance(interfaceC2674l));
            return;
        }
        Objects.requireNonNull(interfaceC2674l);
        m407h();
        this.f949b.mo297u0(new C2947p4(interfaceC2674l), this.f951d);
        this.f956i = true;
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2628a.m618c(this, consumer);
    }

    @Override // p035j$.util.InterfaceC3008t
    /* renamed from: g */
    public boolean tryAdvance(InterfaceC2674l interfaceC2674l) {
        Objects.requireNonNull(interfaceC2674l);
        boolean m409a = m409a();
        if (m409a) {
            C2835W3 c2835w3 = (C2835W3) this.f955h;
            long j = this.f954g;
            int m468w = c2835w3.m468w(j);
            interfaceC2674l.accept((c2835w3.f935c == 0 && m468w == 0) ? ((int[]) c2835w3.f870e)[(int) j] : ((int[][]) c2835w3.f871f)[m468w][(int) (j - c2835w3.f936d[m468w])]);
        }
        return m409a;
    }

    @Override // p035j$.util.stream.AbstractC2887f4
    /* renamed from: j */
    void mo334j() {
        C2835W3 c2835w3 = new C2835W3();
        this.f955h = c2835w3;
        this.f952e = this.f949b.mo296v0(new C2947p4(c2835w3));
        this.f953f = new C2858b(this);
    }

    @Override // p035j$.util.stream.AbstractC2887f4
    /* renamed from: l */
    AbstractC2887f4 mo333l(InterfaceC2701s interfaceC2701s) {
        return new C2953q4(this.f949b, interfaceC2701s, this.f948a);
    }

    @Override // p035j$.util.stream.AbstractC2887f4, p035j$.util.InterfaceC2701s
    public InterfaceC2701s.InterfaceC2703b trySplit() {
        return (InterfaceC2701s.InterfaceC2703b) super.trySplit();
    }
}
