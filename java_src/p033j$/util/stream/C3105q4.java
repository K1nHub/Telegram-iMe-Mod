package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2780a;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826l;
import p033j$.util.function.InterfaceC2839y;
/* renamed from: j$.util.stream.q4 */
/* loaded from: classes2.dex */
final class C3105q4 extends AbstractC3039f4 implements InterfaceC2853s.InterfaceC2855b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3105q4(AbstractC3151y2 abstractC3151y2, InterfaceC2839y interfaceC2839y, boolean z) {
        super(abstractC3151y2, interfaceC2839y, z);
    }

    C3105q4(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, boolean z) {
        super(abstractC3151y2, interfaceC2853s, z);
    }

    @Override // p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return AbstractC2780a.m600k(this, consumer);
    }

    @Override // p033j$.util.InterfaceC3160t
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2826l interfaceC2826l) {
        if (this.f1035h != null || this.f1036i) {
            do {
            } while (tryAdvance(interfaceC2826l));
            return;
        }
        Objects.requireNonNull(interfaceC2826l);
        m398h();
        this.f1029b.mo288u0(new C3099p4(interfaceC2826l), this.f1031d);
        this.f1036i = true;
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2780a.m608c(this, consumer);
    }

    @Override // p033j$.util.InterfaceC3160t
    /* renamed from: g */
    public boolean tryAdvance(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        boolean m400a = m400a();
        if (m400a) {
            C2987W3 c2987w3 = (C2987W3) this.f1035h;
            long j = this.f1034g;
            int m459w = c2987w3.m459w(j);
            interfaceC2826l.accept((c2987w3.f1015c == 0 && m459w == 0) ? ((int[]) c2987w3.f950e)[(int) j] : ((int[][]) c2987w3.f951f)[m459w][(int) (j - c2987w3.f1016d[m459w])]);
        }
        return m400a;
    }

    @Override // p033j$.util.stream.AbstractC3039f4
    /* renamed from: j */
    void mo325j() {
        C2987W3 c2987w3 = new C2987W3();
        this.f1035h = c2987w3;
        this.f1032e = this.f1029b.mo287v0(new C3099p4(c2987w3));
        this.f1033f = new C3010b(this);
    }

    @Override // p033j$.util.stream.AbstractC3039f4
    /* renamed from: l */
    AbstractC3039f4 mo324l(InterfaceC2853s interfaceC2853s) {
        return new C3105q4(this.f1029b, interfaceC2853s, this.f1028a);
    }

    @Override // p033j$.util.stream.AbstractC3039f4, p033j$.util.InterfaceC2853s
    public InterfaceC2853s.InterfaceC2855b trySplit() {
        return (InterfaceC2853s.InterfaceC2855b) super.trySplit();
    }
}
