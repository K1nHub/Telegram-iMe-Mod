package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2615a;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2661l;
import p034j$.util.function.InterfaceC2674y;
/* renamed from: j$.util.stream.q4 */
/* loaded from: classes2.dex */
final class C2940q4 extends AbstractC2874f4 implements InterfaceC2688s.InterfaceC2690b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2940q4(AbstractC2986y2 abstractC2986y2, InterfaceC2674y interfaceC2674y, boolean z) {
        super(abstractC2986y2, interfaceC2674y, z);
    }

    C2940q4(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s, boolean z) {
        super(abstractC2986y2, interfaceC2688s, z);
    }

    @Override // p034j$.util.InterfaceC2688s
    /* renamed from: b */
    public /* synthetic */ boolean mo108b(Consumer consumer) {
        return AbstractC2615a.m596k(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2995t
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2661l interfaceC2661l) {
        if (this.f950h != null || this.f951i) {
            do {
            } while (tryAdvance(interfaceC2661l));
            return;
        }
        Objects.requireNonNull(interfaceC2661l);
        m393h();
        this.f944b.mo283u0(new C2934p4(interfaceC2661l), this.f946d);
        this.f951i = true;
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2615a.m604c(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2995t
    /* renamed from: g */
    public boolean tryAdvance(InterfaceC2661l interfaceC2661l) {
        Objects.requireNonNull(interfaceC2661l);
        boolean m395a = m395a();
        if (m395a) {
            C2822W3 c2822w3 = (C2822W3) this.f950h;
            long j = this.f949g;
            int m454w = c2822w3.m454w(j);
            interfaceC2661l.accept((c2822w3.f930c == 0 && m454w == 0) ? ((int[]) c2822w3.f865e)[(int) j] : ((int[][]) c2822w3.f866f)[m454w][(int) (j - c2822w3.f931d[m454w])]);
        }
        return m395a;
    }

    @Override // p034j$.util.stream.AbstractC2874f4
    /* renamed from: j */
    void mo320j() {
        C2822W3 c2822w3 = new C2822W3();
        this.f950h = c2822w3;
        this.f947e = this.f944b.mo282v0(new C2934p4(c2822w3));
        this.f948f = new C2845b(this);
    }

    @Override // p034j$.util.stream.AbstractC2874f4
    /* renamed from: l */
    AbstractC2874f4 mo319l(InterfaceC2688s interfaceC2688s) {
        return new C2940q4(this.f944b, interfaceC2688s, this.f943a);
    }

    @Override // p034j$.util.stream.AbstractC2874f4, p034j$.util.InterfaceC2688s
    public InterfaceC2688s.InterfaceC2690b trySplit() {
        return (InterfaceC2688s.InterfaceC2690b) super.trySplit();
    }
}
