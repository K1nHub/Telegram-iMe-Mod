package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2414a;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2465q;
import p034j$.util.function.InterfaceC2473y;
/* renamed from: j$.util.stream.s4 */
/* loaded from: classes2.dex */
final class C2751s4 extends AbstractC2673f4 implements InterfaceC2487s.InterfaceC2490c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2751s4(AbstractC2785y2 abstractC2785y2, InterfaceC2473y interfaceC2473y, boolean z) {
        super(abstractC2785y2, interfaceC2473y, z);
    }

    C2751s4(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s, boolean z) {
        super(abstractC2785y2, interfaceC2487s, z);
    }

    @Override // p034j$.util.InterfaceC2487s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return AbstractC2414a.m615l(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2794t
    /* renamed from: d */
    public void forEachRemaining(InterfaceC2465q interfaceC2465q) {
        if (this.f944h != null || this.f945i) {
            do {
            } while (tryAdvance(interfaceC2465q));
            return;
        }
        Objects.requireNonNull(interfaceC2465q);
        m413h();
        this.f938b.mo303u0(new C2745r4(interfaceC2465q), this.f940d);
        this.f945i = true;
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2414a.m623d(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2794t
    /* renamed from: i */
    public boolean tryAdvance(InterfaceC2465q interfaceC2465q) {
        Objects.requireNonNull(interfaceC2465q);
        boolean m415a = m415a();
        if (m415a) {
            C2631Y3 c2631y3 = (C2631Y3) this.f944h;
            long j = this.f943g;
            int m474w = c2631y3.m474w(j);
            interfaceC2465q.accept((c2631y3.f924c == 0 && m474w == 0) ? ((long[]) c2631y3.f859e)[(int) j] : ((long[][]) c2631y3.f860f)[m474w][(int) (j - c2631y3.f925d[m474w])]);
        }
        return m415a;
    }

    @Override // p034j$.util.stream.AbstractC2673f4
    /* renamed from: j */
    void mo340j() {
        C2631Y3 c2631y3 = new C2631Y3();
        this.f944h = c2631y3;
        this.f941e = this.f938b.mo302v0(new C2745r4(c2631y3));
        this.f942f = new C2644b(this);
    }

    @Override // p034j$.util.stream.AbstractC2673f4
    /* renamed from: l */
    AbstractC2673f4 mo339l(InterfaceC2487s interfaceC2487s) {
        return new C2751s4(this.f938b, interfaceC2487s, this.f937a);
    }

    @Override // p034j$.util.stream.AbstractC2673f4, p034j$.util.InterfaceC2487s
    public InterfaceC2487s.InterfaceC2490c trySplit() {
        return (InterfaceC2487s.InterfaceC2490c) super.trySplit();
    }
}
