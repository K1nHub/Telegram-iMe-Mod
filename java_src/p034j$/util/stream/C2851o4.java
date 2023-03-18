package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2538a;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2578f;
import p034j$.util.function.InterfaceC2597y;
/* renamed from: j$.util.stream.o4 */
/* loaded from: classes2.dex */
final class C2851o4 extends AbstractC2797f4 implements InterfaceC2611s.InterfaceC2612a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2851o4(AbstractC2909y2 abstractC2909y2, InterfaceC2597y interfaceC2597y, boolean z) {
        super(abstractC2909y2, interfaceC2597y, z);
    }

    C2851o4(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s, boolean z) {
        super(abstractC2909y2, interfaceC2611s, z);
    }

    @Override // p034j$.util.InterfaceC2611s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return AbstractC2538a.m617j(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2918t
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2578f interfaceC2578f) {
        if (this.f949h != null || this.f950i) {
            do {
            } while (tryAdvance(interfaceC2578f));
            return;
        }
        Objects.requireNonNull(interfaceC2578f);
        m413h();
        this.f943b.mo303u0(new C2845n4(interfaceC2578f), this.f945d);
        this.f950i = true;
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2538a.m625b(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2797f4
    /* renamed from: j */
    void mo340j() {
        C2735U3 c2735u3 = new C2735U3();
        this.f949h = c2735u3;
        this.f946e = this.f943b.mo302v0(new C2845n4(c2735u3));
        this.f947f = new C2768b(this);
    }

    @Override // p034j$.util.InterfaceC2918t
    /* renamed from: k */
    public boolean tryAdvance(InterfaceC2578f interfaceC2578f) {
        Objects.requireNonNull(interfaceC2578f);
        boolean m415a = m415a();
        if (m415a) {
            C2735U3 c2735u3 = (C2735U3) this.f949h;
            long j = this.f948g;
            int m474w = c2735u3.m474w(j);
            interfaceC2578f.accept((c2735u3.f929c == 0 && m474w == 0) ? ((double[]) c2735u3.f864e)[(int) j] : ((double[][]) c2735u3.f865f)[m474w][(int) (j - c2735u3.f930d[m474w])]);
        }
        return m415a;
    }

    @Override // p034j$.util.stream.AbstractC2797f4
    /* renamed from: l */
    AbstractC2797f4 mo339l(InterfaceC2611s interfaceC2611s) {
        return new C2851o4(this.f943b, interfaceC2611s, this.f942a);
    }

    @Override // p034j$.util.stream.AbstractC2797f4, p034j$.util.InterfaceC2611s
    public InterfaceC2611s.InterfaceC2612a trySplit() {
        return (InterfaceC2611s.InterfaceC2612a) super.trySplit();
    }
}
