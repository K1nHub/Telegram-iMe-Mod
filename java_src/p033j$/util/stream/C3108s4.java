package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2838k;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2825p;
import p033j$.util.function.InterfaceC2833x;
/* renamed from: j$.util.stream.s4 */
/* loaded from: classes2.dex */
final class C3108s4 extends AbstractC3030f4 implements Spliterator.InterfaceC2773c {
    C3108s4(AbstractC3142y2 abstractC3142y2, Spliterator spliterator, boolean z) {
        super(abstractC3142y2, spliterator, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3108s4(AbstractC3142y2 abstractC3142y2, InterfaceC2833x interfaceC2833x, boolean z) {
        super(abstractC3142y2, interfaceC2833x, z);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo182b(Consumer consumer) {
        return AbstractC2838k.m601h(this, consumer);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2774d
    /* renamed from: d */
    public void forEachRemaining(InterfaceC2825p interfaceC2825p) {
        if (this.f1088h != null || this.f1089i) {
            do {
            } while (tryAdvance(interfaceC2825p));
            return;
        }
        Objects.requireNonNull(interfaceC2825p);
        m465h();
        this.f1082b.mo355t0(new C3102r4(interfaceC2825p), this.f1084d);
        this.f1089i = true;
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2838k.m606c(this, consumer);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2774d
    /* renamed from: i */
    public boolean tryAdvance(InterfaceC2825p interfaceC2825p) {
        Objects.requireNonNull(interfaceC2825p);
        boolean m467a = m467a();
        if (m467a) {
            C2988Y3 c2988y3 = (C2988Y3) this.f1088h;
            long j = this.f1087g;
            int m527v = c2988y3.m527v(j);
            interfaceC2825p.accept((c2988y3.f1068c == 0 && m527v == 0) ? ((long[]) c2988y3.f1003e)[(int) j] : ((long[][]) c2988y3.f1004f)[m527v][(int) (j - c2988y3.f1069d[m527v])]);
        }
        return m467a;
    }

    @Override // p033j$.util.stream.AbstractC3030f4
    /* renamed from: j */
    void mo392j() {
        C2988Y3 c2988y3 = new C2988Y3();
        this.f1088h = c2988y3;
        this.f1085e = this.f1082b.mo354u0(new C3102r4(c2988y3));
        this.f1086f = new C3001b(this);
    }

    @Override // p033j$.util.stream.AbstractC3030f4
    /* renamed from: k */
    AbstractC3030f4 mo391k(Spliterator spliterator) {
        return new C3108s4(this.f1082b, spliterator, this.f1081a);
    }

    @Override // p033j$.util.stream.AbstractC3030f4, p033j$.util.Spliterator
    public Spliterator.InterfaceC2773c trySplit() {
        return (Spliterator.InterfaceC2773c) super.trySplit();
    }
}
