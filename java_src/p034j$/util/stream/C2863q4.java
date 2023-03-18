package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2538a;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2584l;
import p034j$.util.function.InterfaceC2597y;
/* renamed from: j$.util.stream.q4 */
/* loaded from: classes2.dex */
final class C2863q4 extends AbstractC2797f4 implements InterfaceC2611s.InterfaceC2613b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2863q4(AbstractC2909y2 abstractC2909y2, InterfaceC2597y interfaceC2597y, boolean z) {
        super(abstractC2909y2, interfaceC2597y, z);
    }

    C2863q4(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s, boolean z) {
        super(abstractC2909y2, interfaceC2611s, z);
    }

    @Override // p034j$.util.InterfaceC2611s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return AbstractC2538a.m616k(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2918t
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2584l interfaceC2584l) {
        if (this.f949h != null || this.f950i) {
            do {
            } while (tryAdvance(interfaceC2584l));
            return;
        }
        Objects.requireNonNull(interfaceC2584l);
        m413h();
        this.f943b.mo303u0(new C2857p4(interfaceC2584l), this.f945d);
        this.f950i = true;
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2538a.m624c(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2918t
    /* renamed from: g */
    public boolean tryAdvance(InterfaceC2584l interfaceC2584l) {
        Objects.requireNonNull(interfaceC2584l);
        boolean m415a = m415a();
        if (m415a) {
            C2745W3 c2745w3 = (C2745W3) this.f949h;
            long j = this.f948g;
            int m474w = c2745w3.m474w(j);
            interfaceC2584l.accept((c2745w3.f929c == 0 && m474w == 0) ? ((int[]) c2745w3.f864e)[(int) j] : ((int[][]) c2745w3.f865f)[m474w][(int) (j - c2745w3.f930d[m474w])]);
        }
        return m415a;
    }

    @Override // p034j$.util.stream.AbstractC2797f4
    /* renamed from: j */
    void mo340j() {
        C2745W3 c2745w3 = new C2745W3();
        this.f949h = c2745w3;
        this.f946e = this.f943b.mo302v0(new C2857p4(c2745w3));
        this.f947f = new C2768b(this);
    }

    @Override // p034j$.util.stream.AbstractC2797f4
    /* renamed from: l */
    AbstractC2797f4 mo339l(InterfaceC2611s interfaceC2611s) {
        return new C2863q4(this.f943b, interfaceC2611s, this.f942a);
    }

    @Override // p034j$.util.stream.AbstractC2797f4, p034j$.util.InterfaceC2611s
    public InterfaceC2611s.InterfaceC2613b trySplit() {
        return (InterfaceC2611s.InterfaceC2613b) super.trySplit();
    }
}
