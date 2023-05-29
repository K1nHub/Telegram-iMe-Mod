package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2659a;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2710q;
import p034j$.util.function.InterfaceC2718y;
/* renamed from: j$.util.stream.s4 */
/* loaded from: classes2.dex */
final class C2996s4 extends AbstractC2918f4 implements InterfaceC2732s.InterfaceC2735c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2996s4(AbstractC3030y2 abstractC3030y2, InterfaceC2718y interfaceC2718y, boolean z) {
        super(abstractC3030y2, interfaceC2718y, z);
    }

    C2996s4(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s, boolean z) {
        super(abstractC3030y2, interfaceC2732s, z);
    }

    @Override // p034j$.util.InterfaceC2732s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return AbstractC2659a.m599l(this, consumer);
    }

    @Override // p034j$.util.InterfaceC3039t
    /* renamed from: d */
    public void forEachRemaining(InterfaceC2710q interfaceC2710q) {
        if (this.f953h != null || this.f954i) {
            do {
            } while (tryAdvance(interfaceC2710q));
            return;
        }
        Objects.requireNonNull(interfaceC2710q);
        m398h();
        this.f947b.mo288u0(new C2990r4(interfaceC2710q), this.f949d);
        this.f954i = true;
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2659a.m607d(this, consumer);
    }

    @Override // p034j$.util.InterfaceC3039t
    /* renamed from: i */
    public boolean tryAdvance(InterfaceC2710q interfaceC2710q) {
        Objects.requireNonNull(interfaceC2710q);
        boolean m400a = m400a();
        if (m400a) {
            C2876Y3 c2876y3 = (C2876Y3) this.f953h;
            long j = this.f952g;
            int m459w = c2876y3.m459w(j);
            interfaceC2710q.accept((c2876y3.f933c == 0 && m459w == 0) ? ((long[]) c2876y3.f868e)[(int) j] : ((long[][]) c2876y3.f869f)[m459w][(int) (j - c2876y3.f934d[m459w])]);
        }
        return m400a;
    }

    @Override // p034j$.util.stream.AbstractC2918f4
    /* renamed from: j */
    void mo325j() {
        C2876Y3 c2876y3 = new C2876Y3();
        this.f953h = c2876y3;
        this.f950e = this.f947b.mo287v0(new C2990r4(c2876y3));
        this.f951f = new C2889b(this);
    }

    @Override // p034j$.util.stream.AbstractC2918f4
    /* renamed from: l */
    AbstractC2918f4 mo324l(InterfaceC2732s interfaceC2732s) {
        return new C2996s4(this.f947b, interfaceC2732s, this.f946a);
    }

    @Override // p034j$.util.stream.AbstractC2918f4, p034j$.util.InterfaceC2732s
    public InterfaceC2732s.InterfaceC2735c trySplit() {
        return (InterfaceC2732s.InterfaceC2735c) super.trySplit();
    }
}
