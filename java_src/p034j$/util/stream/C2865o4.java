package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2552a;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2592f;
import p034j$.util.function.InterfaceC2611y;
/* renamed from: j$.util.stream.o4 */
/* loaded from: classes2.dex */
final class C2865o4 extends AbstractC2811f4 implements InterfaceC2625s.InterfaceC2626a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2865o4(AbstractC2923y2 abstractC2923y2, InterfaceC2611y interfaceC2611y, boolean z) {
        super(abstractC2923y2, interfaceC2611y, z);
    }

    C2865o4(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s, boolean z) {
        super(abstractC2923y2, interfaceC2625s, z);
    }

    @Override // p034j$.util.InterfaceC2625s
    /* renamed from: b */
    public /* synthetic */ boolean mo127b(Consumer consumer) {
        return AbstractC2552a.m616j(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2932t
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2592f interfaceC2592f) {
        if (this.f950h != null || this.f951i) {
            do {
            } while (tryAdvance(interfaceC2592f));
            return;
        }
        Objects.requireNonNull(interfaceC2592f);
        m412h();
        this.f944b.mo302u0(new C2859n4(interfaceC2592f), this.f946d);
        this.f951i = true;
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2552a.m624b(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2811f4
    /* renamed from: j */
    void mo339j() {
        C2749U3 c2749u3 = new C2749U3();
        this.f950h = c2749u3;
        this.f947e = this.f944b.mo301v0(new C2859n4(c2749u3));
        this.f948f = new C2782b(this);
    }

    @Override // p034j$.util.InterfaceC2932t
    /* renamed from: k */
    public boolean tryAdvance(InterfaceC2592f interfaceC2592f) {
        Objects.requireNonNull(interfaceC2592f);
        boolean m414a = m414a();
        if (m414a) {
            C2749U3 c2749u3 = (C2749U3) this.f950h;
            long j = this.f949g;
            int m473w = c2749u3.m473w(j);
            interfaceC2592f.accept((c2749u3.f930c == 0 && m473w == 0) ? ((double[]) c2749u3.f865e)[(int) j] : ((double[][]) c2749u3.f866f)[m473w][(int) (j - c2749u3.f931d[m473w])]);
        }
        return m414a;
    }

    @Override // p034j$.util.stream.AbstractC2811f4
    /* renamed from: l */
    AbstractC2811f4 mo338l(InterfaceC2625s interfaceC2625s) {
        return new C2865o4(this.f944b, interfaceC2625s, this.f943a);
    }

    @Override // p034j$.util.stream.AbstractC2811f4, p034j$.util.InterfaceC2625s
    public InterfaceC2625s.InterfaceC2626a trySplit() {
        return (InterfaceC2625s.InterfaceC2626a) super.trySplit();
    }
}
