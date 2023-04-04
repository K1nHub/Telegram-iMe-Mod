package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.AbstractC2628a;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2668f;
import p035j$.util.function.InterfaceC2687y;
/* renamed from: j$.util.stream.o4 */
/* loaded from: classes2.dex */
final class C2941o4 extends AbstractC2887f4 implements InterfaceC2701s.InterfaceC2702a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2941o4(AbstractC2999y2 abstractC2999y2, InterfaceC2687y interfaceC2687y, boolean z) {
        super(abstractC2999y2, interfaceC2687y, z);
    }

    C2941o4(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s, boolean z) {
        super(abstractC2999y2, interfaceC2701s, z);
    }

    @Override // p035j$.util.InterfaceC2701s
    /* renamed from: b */
    public /* synthetic */ boolean mo122b(Consumer consumer) {
        return AbstractC2628a.m611j(this, consumer);
    }

    @Override // p035j$.util.InterfaceC3008t
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2668f interfaceC2668f) {
        if (this.f955h != null || this.f956i) {
            do {
            } while (tryAdvance(interfaceC2668f));
            return;
        }
        Objects.requireNonNull(interfaceC2668f);
        m407h();
        this.f949b.mo297u0(new C2935n4(interfaceC2668f), this.f951d);
        this.f956i = true;
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2628a.m619b(this, consumer);
    }

    @Override // p035j$.util.stream.AbstractC2887f4
    /* renamed from: j */
    void mo334j() {
        C2825U3 c2825u3 = new C2825U3();
        this.f955h = c2825u3;
        this.f952e = this.f949b.mo296v0(new C2935n4(c2825u3));
        this.f953f = new C2858b(this);
    }

    @Override // p035j$.util.InterfaceC3008t
    /* renamed from: k */
    public boolean tryAdvance(InterfaceC2668f interfaceC2668f) {
        Objects.requireNonNull(interfaceC2668f);
        boolean m409a = m409a();
        if (m409a) {
            C2825U3 c2825u3 = (C2825U3) this.f955h;
            long j = this.f954g;
            int m468w = c2825u3.m468w(j);
            interfaceC2668f.accept((c2825u3.f935c == 0 && m468w == 0) ? ((double[]) c2825u3.f870e)[(int) j] : ((double[][]) c2825u3.f871f)[m468w][(int) (j - c2825u3.f936d[m468w])]);
        }
        return m409a;
    }

    @Override // p035j$.util.stream.AbstractC2887f4
    /* renamed from: l */
    AbstractC2887f4 mo333l(InterfaceC2701s interfaceC2701s) {
        return new C2941o4(this.f949b, interfaceC2701s, this.f948a);
    }

    @Override // p035j$.util.stream.AbstractC2887f4, p035j$.util.InterfaceC2701s
    public InterfaceC2701s.InterfaceC2702a trySplit() {
        return (InterfaceC2701s.InterfaceC2702a) super.trySplit();
    }
}
