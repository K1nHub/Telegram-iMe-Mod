package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2659a;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2699f;
import p034j$.util.function.InterfaceC2718y;
/* renamed from: j$.util.stream.o4 */
/* loaded from: classes2.dex */
final class C2972o4 extends AbstractC2918f4 implements InterfaceC2732s.InterfaceC2733a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2972o4(AbstractC3030y2 abstractC3030y2, InterfaceC2718y interfaceC2718y, boolean z) {
        super(abstractC3030y2, interfaceC2718y, z);
    }

    C2972o4(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s, boolean z) {
        super(abstractC3030y2, interfaceC2732s, z);
    }

    @Override // p034j$.util.InterfaceC2732s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return AbstractC2659a.m601j(this, consumer);
    }

    @Override // p034j$.util.InterfaceC3039t
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2699f interfaceC2699f) {
        if (this.f953h != null || this.f954i) {
            do {
            } while (tryAdvance(interfaceC2699f));
            return;
        }
        Objects.requireNonNull(interfaceC2699f);
        m398h();
        this.f947b.mo288u0(new C2966n4(interfaceC2699f), this.f949d);
        this.f954i = true;
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2659a.m609b(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2918f4
    /* renamed from: j */
    void mo325j() {
        C2856U3 c2856u3 = new C2856U3();
        this.f953h = c2856u3;
        this.f950e = this.f947b.mo287v0(new C2966n4(c2856u3));
        this.f951f = new C2889b(this);
    }

    @Override // p034j$.util.InterfaceC3039t
    /* renamed from: k */
    public boolean tryAdvance(InterfaceC2699f interfaceC2699f) {
        Objects.requireNonNull(interfaceC2699f);
        boolean m400a = m400a();
        if (m400a) {
            C2856U3 c2856u3 = (C2856U3) this.f953h;
            long j = this.f952g;
            int m459w = c2856u3.m459w(j);
            interfaceC2699f.accept((c2856u3.f933c == 0 && m459w == 0) ? ((double[]) c2856u3.f868e)[(int) j] : ((double[][]) c2856u3.f869f)[m459w][(int) (j - c2856u3.f934d[m459w])]);
        }
        return m400a;
    }

    @Override // p034j$.util.stream.AbstractC2918f4
    /* renamed from: l */
    AbstractC2918f4 mo324l(InterfaceC2732s interfaceC2732s) {
        return new C2972o4(this.f947b, interfaceC2732s, this.f946a);
    }

    @Override // p034j$.util.stream.AbstractC2918f4, p034j$.util.InterfaceC2732s
    public InterfaceC2732s.InterfaceC2733a trySplit() {
        return (InterfaceC2732s.InterfaceC2733a) super.trySplit();
    }
}
