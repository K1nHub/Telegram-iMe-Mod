package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2538a;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2589q;
import p034j$.util.function.InterfaceC2597y;
/* renamed from: j$.util.stream.s4 */
/* loaded from: classes2.dex */
final class C2875s4 extends AbstractC2797f4 implements InterfaceC2611s.InterfaceC2614c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2875s4(AbstractC2909y2 abstractC2909y2, InterfaceC2597y interfaceC2597y, boolean z) {
        super(abstractC2909y2, interfaceC2597y, z);
    }

    C2875s4(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s, boolean z) {
        super(abstractC2909y2, interfaceC2611s, z);
    }

    @Override // p034j$.util.InterfaceC2611s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return AbstractC2538a.m615l(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2918t
    /* renamed from: d */
    public void forEachRemaining(InterfaceC2589q interfaceC2589q) {
        if (this.f949h != null || this.f950i) {
            do {
            } while (tryAdvance(interfaceC2589q));
            return;
        }
        Objects.requireNonNull(interfaceC2589q);
        m413h();
        this.f943b.mo303u0(new C2869r4(interfaceC2589q), this.f945d);
        this.f950i = true;
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2538a.m623d(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2918t
    /* renamed from: i */
    public boolean tryAdvance(InterfaceC2589q interfaceC2589q) {
        Objects.requireNonNull(interfaceC2589q);
        boolean m415a = m415a();
        if (m415a) {
            C2755Y3 c2755y3 = (C2755Y3) this.f949h;
            long j = this.f948g;
            int m474w = c2755y3.m474w(j);
            interfaceC2589q.accept((c2755y3.f929c == 0 && m474w == 0) ? ((long[]) c2755y3.f864e)[(int) j] : ((long[][]) c2755y3.f865f)[m474w][(int) (j - c2755y3.f930d[m474w])]);
        }
        return m415a;
    }

    @Override // p034j$.util.stream.AbstractC2797f4
    /* renamed from: j */
    void mo340j() {
        C2755Y3 c2755y3 = new C2755Y3();
        this.f949h = c2755y3;
        this.f946e = this.f943b.mo302v0(new C2869r4(c2755y3));
        this.f947f = new C2768b(this);
    }

    @Override // p034j$.util.stream.AbstractC2797f4
    /* renamed from: l */
    AbstractC2797f4 mo339l(InterfaceC2611s interfaceC2611s) {
        return new C2875s4(this.f943b, interfaceC2611s, this.f942a);
    }

    @Override // p034j$.util.stream.AbstractC2797f4, p034j$.util.InterfaceC2611s
    public InterfaceC2611s.InterfaceC2614c trySplit() {
        return (InterfaceC2611s.InterfaceC2614c) super.trySplit();
    }
}
