package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2654a;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2694f;
import p034j$.util.function.InterfaceC2713y;
/* renamed from: j$.util.stream.o4 */
/* loaded from: classes2.dex */
final class C2967o4 extends AbstractC2913f4 implements InterfaceC2727s.InterfaceC2728a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2967o4(AbstractC3025y2 abstractC3025y2, InterfaceC2713y interfaceC2713y, boolean z) {
        super(abstractC3025y2, interfaceC2713y, z);
    }

    C2967o4(AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s, boolean z) {
        super(abstractC3025y2, interfaceC2727s, z);
    }

    @Override // p034j$.util.InterfaceC2727s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return AbstractC2654a.m601j(this, consumer);
    }

    @Override // p034j$.util.InterfaceC3034t
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2694f interfaceC2694f) {
        if (this.f953h != null || this.f954i) {
            do {
            } while (tryAdvance(interfaceC2694f));
            return;
        }
        Objects.requireNonNull(interfaceC2694f);
        m398h();
        this.f947b.mo288u0(new C2961n4(interfaceC2694f), this.f949d);
        this.f954i = true;
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2654a.m609b(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2913f4
    /* renamed from: j */
    void mo325j() {
        C2851U3 c2851u3 = new C2851U3();
        this.f953h = c2851u3;
        this.f950e = this.f947b.mo287v0(new C2961n4(c2851u3));
        this.f951f = new C2884b(this);
    }

    @Override // p034j$.util.InterfaceC3034t
    /* renamed from: k */
    public boolean tryAdvance(InterfaceC2694f interfaceC2694f) {
        Objects.requireNonNull(interfaceC2694f);
        boolean m400a = m400a();
        if (m400a) {
            C2851U3 c2851u3 = (C2851U3) this.f953h;
            long j = this.f952g;
            int m459w = c2851u3.m459w(j);
            interfaceC2694f.accept((c2851u3.f933c == 0 && m459w == 0) ? ((double[]) c2851u3.f868e)[(int) j] : ((double[][]) c2851u3.f869f)[m459w][(int) (j - c2851u3.f934d[m459w])]);
        }
        return m400a;
    }

    @Override // p034j$.util.stream.AbstractC2913f4
    /* renamed from: l */
    AbstractC2913f4 mo324l(InterfaceC2727s interfaceC2727s) {
        return new C2967o4(this.f947b, interfaceC2727s, this.f946a);
    }

    @Override // p034j$.util.stream.AbstractC2913f4, p034j$.util.InterfaceC2727s
    public InterfaceC2727s.InterfaceC2728a trySplit() {
        return (InterfaceC2727s.InterfaceC2728a) super.trySplit();
    }
}
