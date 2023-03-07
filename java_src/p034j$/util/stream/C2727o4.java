package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2414a;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2454f;
import p034j$.util.function.InterfaceC2473y;
/* renamed from: j$.util.stream.o4 */
/* loaded from: classes2.dex */
final class C2727o4 extends AbstractC2673f4 implements InterfaceC2487s.InterfaceC2488a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2727o4(AbstractC2785y2 abstractC2785y2, InterfaceC2473y interfaceC2473y, boolean z) {
        super(abstractC2785y2, interfaceC2473y, z);
    }

    C2727o4(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s, boolean z) {
        super(abstractC2785y2, interfaceC2487s, z);
    }

    @Override // p034j$.util.InterfaceC2487s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return AbstractC2414a.m617j(this, consumer);
    }

    @Override // p034j$.util.InterfaceC2794t
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2454f interfaceC2454f) {
        if (this.f944h != null || this.f945i) {
            do {
            } while (tryAdvance(interfaceC2454f));
            return;
        }
        Objects.requireNonNull(interfaceC2454f);
        m413h();
        this.f938b.mo303u0(new C2721n4(interfaceC2454f), this.f940d);
        this.f945i = true;
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2414a.m625b(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2673f4
    /* renamed from: j */
    void mo340j() {
        C2611U3 c2611u3 = new C2611U3();
        this.f944h = c2611u3;
        this.f941e = this.f938b.mo302v0(new C2721n4(c2611u3));
        this.f942f = new C2644b(this);
    }

    @Override // p034j$.util.InterfaceC2794t
    /* renamed from: k */
    public boolean tryAdvance(InterfaceC2454f interfaceC2454f) {
        Objects.requireNonNull(interfaceC2454f);
        boolean m415a = m415a();
        if (m415a) {
            C2611U3 c2611u3 = (C2611U3) this.f944h;
            long j = this.f943g;
            int m474w = c2611u3.m474w(j);
            interfaceC2454f.accept((c2611u3.f924c == 0 && m474w == 0) ? ((double[]) c2611u3.f859e)[(int) j] : ((double[][]) c2611u3.f860f)[m474w][(int) (j - c2611u3.f925d[m474w])]);
        }
        return m415a;
    }

    @Override // p034j$.util.stream.AbstractC2673f4
    /* renamed from: l */
    AbstractC2673f4 mo339l(InterfaceC2487s interfaceC2487s) {
        return new C2727o4(this.f938b, interfaceC2487s, this.f937a);
    }

    @Override // p034j$.util.stream.AbstractC2673f4, p034j$.util.InterfaceC2487s
    public InterfaceC2487s.InterfaceC2488a trySplit() {
        return (InterfaceC2487s.InterfaceC2488a) super.trySplit();
    }
}
