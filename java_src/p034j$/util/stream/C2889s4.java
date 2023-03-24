package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2552a;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2603q;
import p034j$.util.function.InterfaceC2611y;
/* renamed from: j$.util.stream.s4 */
/* loaded from: classes2.dex */
final class C2889s4 extends AbstractC2811f4 implements InterfaceC2625s.InterfaceC2628c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2889s4(AbstractC2923y2 abstractC2923y2, InterfaceC2611y interfaceC2611y, boolean z) {
        super(abstractC2923y2, interfaceC2611y, z);
    }

    C2889s4(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s, boolean z) {
        super(abstractC2923y2, interfaceC2625s, z);
    }

    @Override // p034j$.util.InterfaceC2625s
    /* renamed from: b */
    public /* synthetic */ boolean mo127b(Consumer consumer) {
        return AbstractC2552a.m614l(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2932t
    /* renamed from: d */
    public void forEachRemaining(InterfaceC2603q interfaceC2603q) {
        if (this.f950h != null || this.f951i) {
            do {
            } while (tryAdvance(interfaceC2603q));
            return;
        }
        Objects.requireNonNull(interfaceC2603q);
        m412h();
        this.f944b.mo302u0(new C2883r4(interfaceC2603q), this.f946d);
        this.f951i = true;
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2552a.m622d(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2932t
    /* renamed from: i */
    public boolean tryAdvance(InterfaceC2603q interfaceC2603q) {
        Objects.requireNonNull(interfaceC2603q);
        boolean m414a = m414a();
        if (m414a) {
            C2769Y3 c2769y3 = (C2769Y3) this.f950h;
            long j = this.f949g;
            int m473w = c2769y3.m473w(j);
            interfaceC2603q.accept((c2769y3.f930c == 0 && m473w == 0) ? ((long[]) c2769y3.f865e)[(int) j] : ((long[][]) c2769y3.f866f)[m473w][(int) (j - c2769y3.f931d[m473w])]);
        }
        return m414a;
    }

    @Override // p034j$.util.stream.AbstractC2811f4
    /* renamed from: j */
    void mo339j() {
        C2769Y3 c2769y3 = new C2769Y3();
        this.f950h = c2769y3;
        this.f947e = this.f944b.mo301v0(new C2883r4(c2769y3));
        this.f948f = new C2782b(this);
    }

    @Override // p034j$.util.stream.AbstractC2811f4
    /* renamed from: l */
    AbstractC2811f4 mo338l(InterfaceC2625s interfaceC2625s) {
        return new C2889s4(this.f944b, interfaceC2625s, this.f943a);
    }

    @Override // p034j$.util.stream.AbstractC2811f4, p034j$.util.InterfaceC2625s
    public InterfaceC2625s.InterfaceC2628c trySplit() {
        return (InterfaceC2625s.InterfaceC2628c) super.trySplit();
    }
}
