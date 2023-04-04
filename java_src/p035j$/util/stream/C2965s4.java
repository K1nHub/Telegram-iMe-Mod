package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.AbstractC2628a;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2679q;
import p035j$.util.function.InterfaceC2687y;
/* renamed from: j$.util.stream.s4 */
/* loaded from: classes2.dex */
final class C2965s4 extends AbstractC2887f4 implements InterfaceC2701s.InterfaceC2704c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2965s4(AbstractC2999y2 abstractC2999y2, InterfaceC2687y interfaceC2687y, boolean z) {
        super(abstractC2999y2, interfaceC2687y, z);
    }

    C2965s4(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s, boolean z) {
        super(abstractC2999y2, interfaceC2701s, z);
    }

    @Override // p035j$.util.InterfaceC2701s
    /* renamed from: b */
    public /* synthetic */ boolean mo122b(Consumer consumer) {
        return AbstractC2628a.m609l(this, consumer);
    }

    @Override // p035j$.util.InterfaceC3008t
    /* renamed from: d */
    public void forEachRemaining(InterfaceC2679q interfaceC2679q) {
        if (this.f955h != null || this.f956i) {
            do {
            } while (tryAdvance(interfaceC2679q));
            return;
        }
        Objects.requireNonNull(interfaceC2679q);
        m407h();
        this.f949b.mo297u0(new C2959r4(interfaceC2679q), this.f951d);
        this.f956i = true;
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2628a.m617d(this, consumer);
    }

    @Override // p035j$.util.InterfaceC3008t
    /* renamed from: i */
    public boolean tryAdvance(InterfaceC2679q interfaceC2679q) {
        Objects.requireNonNull(interfaceC2679q);
        boolean m409a = m409a();
        if (m409a) {
            C2845Y3 c2845y3 = (C2845Y3) this.f955h;
            long j = this.f954g;
            int m468w = c2845y3.m468w(j);
            interfaceC2679q.accept((c2845y3.f935c == 0 && m468w == 0) ? ((long[]) c2845y3.f870e)[(int) j] : ((long[][]) c2845y3.f871f)[m468w][(int) (j - c2845y3.f936d[m468w])]);
        }
        return m409a;
    }

    @Override // p035j$.util.stream.AbstractC2887f4
    /* renamed from: j */
    void mo334j() {
        C2845Y3 c2845y3 = new C2845Y3();
        this.f955h = c2845y3;
        this.f952e = this.f949b.mo296v0(new C2959r4(c2845y3));
        this.f953f = new C2858b(this);
    }

    @Override // p035j$.util.stream.AbstractC2887f4
    /* renamed from: l */
    AbstractC2887f4 mo333l(InterfaceC2701s interfaceC2701s) {
        return new C2965s4(this.f949b, interfaceC2701s, this.f948a);
    }

    @Override // p035j$.util.stream.AbstractC2887f4, p035j$.util.InterfaceC2701s
    public InterfaceC2701s.InterfaceC2704c trySplit() {
        return (InterfaceC2701s.InterfaceC2704c) super.trySplit();
    }
}
