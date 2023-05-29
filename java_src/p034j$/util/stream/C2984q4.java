package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2659a;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2705l;
import p034j$.util.function.InterfaceC2718y;
/* renamed from: j$.util.stream.q4 */
/* loaded from: classes2.dex */
final class C2984q4 extends AbstractC2918f4 implements InterfaceC2732s.InterfaceC2734b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2984q4(AbstractC3030y2 abstractC3030y2, InterfaceC2718y interfaceC2718y, boolean z) {
        super(abstractC3030y2, interfaceC2718y, z);
    }

    C2984q4(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s, boolean z) {
        super(abstractC3030y2, interfaceC2732s, z);
    }

    @Override // p034j$.util.InterfaceC2732s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return AbstractC2659a.m600k(this, consumer);
    }

    @Override // p034j$.util.InterfaceC3039t
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2705l interfaceC2705l) {
        if (this.f953h != null || this.f954i) {
            do {
            } while (tryAdvance(interfaceC2705l));
            return;
        }
        Objects.requireNonNull(interfaceC2705l);
        m398h();
        this.f947b.mo288u0(new C2978p4(interfaceC2705l), this.f949d);
        this.f954i = true;
    }

    @Override // p034j$.util.InterfaceC2732s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2659a.m608c(this, consumer);
    }

    @Override // p034j$.util.InterfaceC3039t
    /* renamed from: g */
    public boolean tryAdvance(InterfaceC2705l interfaceC2705l) {
        Objects.requireNonNull(interfaceC2705l);
        boolean m400a = m400a();
        if (m400a) {
            C2866W3 c2866w3 = (C2866W3) this.f953h;
            long j = this.f952g;
            int m459w = c2866w3.m459w(j);
            interfaceC2705l.accept((c2866w3.f933c == 0 && m459w == 0) ? ((int[]) c2866w3.f868e)[(int) j] : ((int[][]) c2866w3.f869f)[m459w][(int) (j - c2866w3.f934d[m459w])]);
        }
        return m400a;
    }

    @Override // p034j$.util.stream.AbstractC2918f4
    /* renamed from: j */
    void mo325j() {
        C2866W3 c2866w3 = new C2866W3();
        this.f953h = c2866w3;
        this.f950e = this.f947b.mo287v0(new C2978p4(c2866w3));
        this.f951f = new C2889b(this);
    }

    @Override // p034j$.util.stream.AbstractC2918f4
    /* renamed from: l */
    AbstractC2918f4 mo324l(InterfaceC2732s interfaceC2732s) {
        return new C2984q4(this.f947b, interfaceC2732s, this.f946a);
    }

    @Override // p034j$.util.stream.AbstractC2918f4, p034j$.util.InterfaceC2732s
    public InterfaceC2732s.InterfaceC2734b trySplit() {
        return (InterfaceC2732s.InterfaceC2734b) super.trySplit();
    }
}
