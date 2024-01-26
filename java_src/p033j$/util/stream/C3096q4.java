package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2838k;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2821l;
import p033j$.util.function.InterfaceC2833x;
/* renamed from: j$.util.stream.q4 */
/* loaded from: classes2.dex */
final class C3096q4 extends AbstractC3030f4 implements Spliterator.InterfaceC2772b {
    C3096q4(AbstractC3142y2 abstractC3142y2, Spliterator spliterator, boolean z) {
        super(abstractC3142y2, spliterator, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3096q4(AbstractC3142y2 abstractC3142y2, InterfaceC2833x interfaceC2833x, boolean z) {
        super(abstractC3142y2, interfaceC2833x, z);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo182b(Consumer consumer) {
        return AbstractC2838k.m602g(this, consumer);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2774d
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2821l interfaceC2821l) {
        if (this.f1088h != null || this.f1089i) {
            do {
            } while (tryAdvance(interfaceC2821l));
            return;
        }
        Objects.requireNonNull(interfaceC2821l);
        m465h();
        this.f1082b.mo355t0(new C3090p4(interfaceC2821l), this.f1084d);
        this.f1089i = true;
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2838k.m607b(this, consumer);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2774d
    /* renamed from: g */
    public boolean tryAdvance(InterfaceC2821l interfaceC2821l) {
        Objects.requireNonNull(interfaceC2821l);
        boolean m467a = m467a();
        if (m467a) {
            C2978W3 c2978w3 = (C2978W3) this.f1088h;
            long j = this.f1087g;
            int m527v = c2978w3.m527v(j);
            interfaceC2821l.accept((c2978w3.f1068c == 0 && m527v == 0) ? ((int[]) c2978w3.f1003e)[(int) j] : ((int[][]) c2978w3.f1004f)[m527v][(int) (j - c2978w3.f1069d[m527v])]);
        }
        return m467a;
    }

    @Override // p033j$.util.stream.AbstractC3030f4
    /* renamed from: j */
    void mo392j() {
        C2978W3 c2978w3 = new C2978W3();
        this.f1088h = c2978w3;
        this.f1085e = this.f1082b.mo354u0(new C3090p4(c2978w3));
        this.f1086f = new C3001b(this);
    }

    @Override // p033j$.util.stream.AbstractC3030f4
    /* renamed from: k */
    AbstractC3030f4 mo391k(Spliterator spliterator) {
        return new C3096q4(this.f1082b, spliterator, this.f1081a);
    }

    @Override // p033j$.util.stream.AbstractC3030f4, p033j$.util.Spliterator
    public Spliterator.InterfaceC2772b trySplit() {
        return (Spliterator.InterfaceC2772b) super.trySplit();
    }
}
