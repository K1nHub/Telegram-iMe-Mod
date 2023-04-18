package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2615a;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2655f;
import p034j$.util.function.InterfaceC2674y;
/* renamed from: j$.util.stream.o4 */
/* loaded from: classes2.dex */
final class C2928o4 extends AbstractC2874f4 implements InterfaceC2688s.InterfaceC2689a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2928o4(AbstractC2986y2 abstractC2986y2, InterfaceC2674y interfaceC2674y, boolean z) {
        super(abstractC2986y2, interfaceC2674y, z);
    }

    C2928o4(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s, boolean z) {
        super(abstractC2986y2, interfaceC2688s, z);
    }

    @Override // p034j$.util.InterfaceC2688s
    /* renamed from: b */
    public /* synthetic */ boolean mo108b(Consumer consumer) {
        return AbstractC2615a.m597j(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2995t
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2655f interfaceC2655f) {
        if (this.f950h != null || this.f951i) {
            do {
            } while (tryAdvance(interfaceC2655f));
            return;
        }
        Objects.requireNonNull(interfaceC2655f);
        m393h();
        this.f944b.mo283u0(new C2922n4(interfaceC2655f), this.f946d);
        this.f951i = true;
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2615a.m605b(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2874f4
    /* renamed from: j */
    void mo320j() {
        C2812U3 c2812u3 = new C2812U3();
        this.f950h = c2812u3;
        this.f947e = this.f944b.mo282v0(new C2922n4(c2812u3));
        this.f948f = new C2845b(this);
    }

    @Override // p034j$.util.InterfaceC2995t
    /* renamed from: k */
    public boolean tryAdvance(InterfaceC2655f interfaceC2655f) {
        Objects.requireNonNull(interfaceC2655f);
        boolean m395a = m395a();
        if (m395a) {
            C2812U3 c2812u3 = (C2812U3) this.f950h;
            long j = this.f949g;
            int m454w = c2812u3.m454w(j);
            interfaceC2655f.accept((c2812u3.f930c == 0 && m454w == 0) ? ((double[]) c2812u3.f865e)[(int) j] : ((double[][]) c2812u3.f866f)[m454w][(int) (j - c2812u3.f931d[m454w])]);
        }
        return m395a;
    }

    @Override // p034j$.util.stream.AbstractC2874f4
    /* renamed from: l */
    AbstractC2874f4 mo319l(InterfaceC2688s interfaceC2688s) {
        return new C2928o4(this.f944b, interfaceC2688s, this.f943a);
    }

    @Override // p034j$.util.stream.AbstractC2874f4, p034j$.util.InterfaceC2688s
    public InterfaceC2688s.InterfaceC2689a trySplit() {
        return (InterfaceC2688s.InterfaceC2689a) super.trySplit();
    }
}
