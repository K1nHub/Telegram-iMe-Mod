package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2615a;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2666q;
import p034j$.util.function.InterfaceC2674y;
/* renamed from: j$.util.stream.s4 */
/* loaded from: classes2.dex */
final class C2952s4 extends AbstractC2874f4 implements InterfaceC2688s.InterfaceC2691c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2952s4(AbstractC2986y2 abstractC2986y2, InterfaceC2674y interfaceC2674y, boolean z) {
        super(abstractC2986y2, interfaceC2674y, z);
    }

    C2952s4(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s, boolean z) {
        super(abstractC2986y2, interfaceC2688s, z);
    }

    @Override // p034j$.util.InterfaceC2688s
    /* renamed from: b */
    public /* synthetic */ boolean mo108b(Consumer consumer) {
        return AbstractC2615a.m595l(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2995t
    /* renamed from: d */
    public void forEachRemaining(InterfaceC2666q interfaceC2666q) {
        if (this.f950h != null || this.f951i) {
            do {
            } while (tryAdvance(interfaceC2666q));
            return;
        }
        Objects.requireNonNull(interfaceC2666q);
        m393h();
        this.f944b.mo283u0(new C2946r4(interfaceC2666q), this.f946d);
        this.f951i = true;
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2615a.m603d(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2995t
    /* renamed from: i */
    public boolean tryAdvance(InterfaceC2666q interfaceC2666q) {
        Objects.requireNonNull(interfaceC2666q);
        boolean m395a = m395a();
        if (m395a) {
            C2832Y3 c2832y3 = (C2832Y3) this.f950h;
            long j = this.f949g;
            int m454w = c2832y3.m454w(j);
            interfaceC2666q.accept((c2832y3.f930c == 0 && m454w == 0) ? ((long[]) c2832y3.f865e)[(int) j] : ((long[][]) c2832y3.f866f)[m454w][(int) (j - c2832y3.f931d[m454w])]);
        }
        return m395a;
    }

    @Override // p034j$.util.stream.AbstractC2874f4
    /* renamed from: j */
    void mo320j() {
        C2832Y3 c2832y3 = new C2832Y3();
        this.f950h = c2832y3;
        this.f947e = this.f944b.mo282v0(new C2946r4(c2832y3));
        this.f948f = new C2845b(this);
    }

    @Override // p034j$.util.stream.AbstractC2874f4
    /* renamed from: l */
    AbstractC2874f4 mo319l(InterfaceC2688s interfaceC2688s) {
        return new C2952s4(this.f944b, interfaceC2688s, this.f943a);
    }

    @Override // p034j$.util.stream.AbstractC2874f4, p034j$.util.InterfaceC2688s
    public InterfaceC2688s.InterfaceC2691c trySplit() {
        return (InterfaceC2688s.InterfaceC2691c) super.trySplit();
    }
}
