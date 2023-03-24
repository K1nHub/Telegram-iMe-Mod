package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2552a;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2598l;
import p034j$.util.function.InterfaceC2611y;
/* renamed from: j$.util.stream.q4 */
/* loaded from: classes2.dex */
final class C2877q4 extends AbstractC2811f4 implements InterfaceC2625s.InterfaceC2627b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2877q4(AbstractC2923y2 abstractC2923y2, InterfaceC2611y interfaceC2611y, boolean z) {
        super(abstractC2923y2, interfaceC2611y, z);
    }

    C2877q4(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s, boolean z) {
        super(abstractC2923y2, interfaceC2625s, z);
    }

    @Override // p034j$.util.InterfaceC2625s
    /* renamed from: b */
    public /* synthetic */ boolean mo127b(Consumer consumer) {
        return AbstractC2552a.m615k(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2932t
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2598l interfaceC2598l) {
        if (this.f950h != null || this.f951i) {
            do {
            } while (tryAdvance(interfaceC2598l));
            return;
        }
        Objects.requireNonNull(interfaceC2598l);
        m412h();
        this.f944b.mo302u0(new C2871p4(interfaceC2598l), this.f946d);
        this.f951i = true;
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2552a.m623c(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2932t
    /* renamed from: g */
    public boolean tryAdvance(InterfaceC2598l interfaceC2598l) {
        Objects.requireNonNull(interfaceC2598l);
        boolean m414a = m414a();
        if (m414a) {
            C2759W3 c2759w3 = (C2759W3) this.f950h;
            long j = this.f949g;
            int m473w = c2759w3.m473w(j);
            interfaceC2598l.accept((c2759w3.f930c == 0 && m473w == 0) ? ((int[]) c2759w3.f865e)[(int) j] : ((int[][]) c2759w3.f866f)[m473w][(int) (j - c2759w3.f931d[m473w])]);
        }
        return m414a;
    }

    @Override // p034j$.util.stream.AbstractC2811f4
    /* renamed from: j */
    void mo339j() {
        C2759W3 c2759w3 = new C2759W3();
        this.f950h = c2759w3;
        this.f947e = this.f944b.mo301v0(new C2871p4(c2759w3));
        this.f948f = new C2782b(this);
    }

    @Override // p034j$.util.stream.AbstractC2811f4
    /* renamed from: l */
    AbstractC2811f4 mo338l(InterfaceC2625s interfaceC2625s) {
        return new C2877q4(this.f944b, interfaceC2625s, this.f943a);
    }

    @Override // p034j$.util.stream.AbstractC2811f4, p034j$.util.InterfaceC2625s
    public InterfaceC2625s.InterfaceC2627b trySplit() {
        return (InterfaceC2625s.InterfaceC2627b) super.trySplit();
    }
}
