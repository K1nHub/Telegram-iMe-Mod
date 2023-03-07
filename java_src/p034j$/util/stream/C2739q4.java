package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2414a;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2460l;
import p034j$.util.function.InterfaceC2473y;
/* renamed from: j$.util.stream.q4 */
/* loaded from: classes2.dex */
final class C2739q4 extends AbstractC2673f4 implements InterfaceC2487s.InterfaceC2489b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2739q4(AbstractC2785y2 abstractC2785y2, InterfaceC2473y interfaceC2473y, boolean z) {
        super(abstractC2785y2, interfaceC2473y, z);
    }

    C2739q4(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s, boolean z) {
        super(abstractC2785y2, interfaceC2487s, z);
    }

    @Override // p034j$.util.InterfaceC2487s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return AbstractC2414a.m616k(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2794t
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2460l interfaceC2460l) {
        if (this.f944h != null || this.f945i) {
            do {
            } while (tryAdvance(interfaceC2460l));
            return;
        }
        Objects.requireNonNull(interfaceC2460l);
        m413h();
        this.f938b.mo303u0(new C2733p4(interfaceC2460l), this.f940d);
        this.f945i = true;
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2414a.m624c(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2794t
    /* renamed from: g */
    public boolean tryAdvance(InterfaceC2460l interfaceC2460l) {
        Objects.requireNonNull(interfaceC2460l);
        boolean m415a = m415a();
        if (m415a) {
            C2621W3 c2621w3 = (C2621W3) this.f944h;
            long j = this.f943g;
            int m474w = c2621w3.m474w(j);
            interfaceC2460l.accept((c2621w3.f924c == 0 && m474w == 0) ? ((int[]) c2621w3.f859e)[(int) j] : ((int[][]) c2621w3.f860f)[m474w][(int) (j - c2621w3.f925d[m474w])]);
        }
        return m415a;
    }

    @Override // p034j$.util.stream.AbstractC2673f4
    /* renamed from: j */
    void mo340j() {
        C2621W3 c2621w3 = new C2621W3();
        this.f944h = c2621w3;
        this.f941e = this.f938b.mo302v0(new C2733p4(c2621w3));
        this.f942f = new C2644b(this);
    }

    @Override // p034j$.util.stream.AbstractC2673f4
    /* renamed from: l */
    AbstractC2673f4 mo339l(InterfaceC2487s interfaceC2487s) {
        return new C2739q4(this.f938b, interfaceC2487s, this.f937a);
    }

    @Override // p034j$.util.stream.AbstractC2673f4, p034j$.util.InterfaceC2487s
    public InterfaceC2487s.InterfaceC2489b trySplit() {
        return (InterfaceC2487s.InterfaceC2489b) super.trySplit();
    }
}
