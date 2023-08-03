package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2780a;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2831q;
import p033j$.util.function.InterfaceC2839y;
/* renamed from: j$.util.stream.s4 */
/* loaded from: classes2.dex */
final class C3117s4 extends AbstractC3039f4 implements InterfaceC2853s.InterfaceC2856c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3117s4(AbstractC3151y2 abstractC3151y2, InterfaceC2839y interfaceC2839y, boolean z) {
        super(abstractC3151y2, interfaceC2839y, z);
    }

    C3117s4(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, boolean z) {
        super(abstractC3151y2, interfaceC2853s, z);
    }

    @Override // p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2780a.m617l(this, consumer);
    }

    @Override // p033j$.util.InterfaceC3160t
    /* renamed from: d */
    public void forEachRemaining(InterfaceC2831q interfaceC2831q) {
        if (this.f1038h != null || this.f1039i) {
            do {
            } while (tryAdvance(interfaceC2831q));
            return;
        }
        Objects.requireNonNull(interfaceC2831q);
        m416h();
        this.f1032b.mo306u0(new C3111r4(interfaceC2831q), this.f1034d);
        this.f1039i = true;
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2780a.m625d(this, consumer);
    }

    @Override // p033j$.util.InterfaceC3160t
    /* renamed from: i */
    public boolean tryAdvance(InterfaceC2831q interfaceC2831q) {
        Objects.requireNonNull(interfaceC2831q);
        boolean m418a = m418a();
        if (m418a) {
            C2997Y3 c2997y3 = (C2997Y3) this.f1038h;
            long j = this.f1037g;
            int m477w = c2997y3.m477w(j);
            interfaceC2831q.accept((c2997y3.f1018c == 0 && m477w == 0) ? ((long[]) c2997y3.f953e)[(int) j] : ((long[][]) c2997y3.f954f)[m477w][(int) (j - c2997y3.f1019d[m477w])]);
        }
        return m418a;
    }

    @Override // p033j$.util.stream.AbstractC3039f4
    /* renamed from: j */
    void mo343j() {
        C2997Y3 c2997y3 = new C2997Y3();
        this.f1038h = c2997y3;
        this.f1035e = this.f1032b.mo305v0(new C3111r4(c2997y3));
        this.f1036f = new C3010b(this);
    }

    @Override // p033j$.util.stream.AbstractC3039f4
    /* renamed from: l */
    AbstractC3039f4 mo342l(InterfaceC2853s interfaceC2853s) {
        return new C3117s4(this.f1032b, interfaceC2853s, this.f1031a);
    }

    @Override // p033j$.util.stream.AbstractC3039f4, p033j$.util.InterfaceC2853s
    public InterfaceC2853s.InterfaceC2856c trySplit() {
        return (InterfaceC2853s.InterfaceC2856c) super.trySplit();
    }
}
