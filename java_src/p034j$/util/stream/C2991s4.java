package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.AbstractC2654a;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2705q;
import p034j$.util.function.InterfaceC2713y;
/* renamed from: j$.util.stream.s4 */
/* loaded from: classes2.dex */
final class C2991s4 extends AbstractC2913f4 implements InterfaceC2727s.InterfaceC2730c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2991s4(AbstractC3025y2 abstractC3025y2, InterfaceC2713y interfaceC2713y, boolean z) {
        super(abstractC3025y2, interfaceC2713y, z);
    }

    C2991s4(AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s, boolean z) {
        super(abstractC3025y2, interfaceC2727s, z);
    }

    @Override // p034j$.util.InterfaceC2727s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return AbstractC2654a.m599l(this, consumer);
    }

    @Override // p034j$.util.InterfaceC3034t
    /* renamed from: d */
    public void forEachRemaining(InterfaceC2705q interfaceC2705q) {
        if (this.f953h != null || this.f954i) {
            do {
            } while (tryAdvance(interfaceC2705q));
            return;
        }
        Objects.requireNonNull(interfaceC2705q);
        m398h();
        this.f947b.mo288u0(new C2985r4(interfaceC2705q), this.f949d);
        this.f954i = true;
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2654a.m607d(this, consumer);
    }

    @Override // p034j$.util.InterfaceC3034t
    /* renamed from: i */
    public boolean tryAdvance(InterfaceC2705q interfaceC2705q) {
        Objects.requireNonNull(interfaceC2705q);
        boolean m400a = m400a();
        if (m400a) {
            C2871Y3 c2871y3 = (C2871Y3) this.f953h;
            long j = this.f952g;
            int m459w = c2871y3.m459w(j);
            interfaceC2705q.accept((c2871y3.f933c == 0 && m459w == 0) ? ((long[]) c2871y3.f868e)[(int) j] : ((long[][]) c2871y3.f869f)[m459w][(int) (j - c2871y3.f934d[m459w])]);
        }
        return m400a;
    }

    @Override // p034j$.util.stream.AbstractC2913f4
    /* renamed from: j */
    void mo325j() {
        C2871Y3 c2871y3 = new C2871Y3();
        this.f953h = c2871y3;
        this.f950e = this.f947b.mo287v0(new C2985r4(c2871y3));
        this.f951f = new C2884b(this);
    }

    @Override // p034j$.util.stream.AbstractC2913f4
    /* renamed from: l */
    AbstractC2913f4 mo324l(InterfaceC2727s interfaceC2727s) {
        return new C2991s4(this.f947b, interfaceC2727s, this.f946a);
    }

    @Override // p034j$.util.stream.AbstractC2913f4, p034j$.util.InterfaceC2727s
    public InterfaceC2727s.InterfaceC2730c trySplit() {
        return (InterfaceC2727s.InterfaceC2730c) super.trySplit();
    }
}
