package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2839k;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826p;
import p033j$.util.function.InterfaceC2834x;
/* renamed from: j$.util.stream.s4 */
/* loaded from: classes2.dex */
final class C3109s4 extends AbstractC3031f4 implements Spliterator.InterfaceC2774c {
    C3109s4(AbstractC3143y2 abstractC3143y2, Spliterator spliterator, boolean z) {
        super(abstractC3143y2, spliterator, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3109s4(AbstractC3143y2 abstractC3143y2, InterfaceC2834x interfaceC2834x, boolean z) {
        super(abstractC3143y2, interfaceC2834x, z);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo178b(Consumer consumer) {
        return AbstractC2839k.m597h(this, consumer);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2775d
    /* renamed from: d */
    public void forEachRemaining(InterfaceC2826p interfaceC2826p) {
        if (this.f1088h != null || this.f1089i) {
            do {
            } while (tryAdvance(interfaceC2826p));
            return;
        }
        Objects.requireNonNull(interfaceC2826p);
        m461h();
        this.f1082b.mo351t0(new C3103r4(interfaceC2826p), this.f1084d);
        this.f1089i = true;
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2839k.m602c(this, consumer);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2775d
    /* renamed from: i */
    public boolean tryAdvance(InterfaceC2826p interfaceC2826p) {
        Objects.requireNonNull(interfaceC2826p);
        boolean m463a = m463a();
        if (m463a) {
            C2989Y3 c2989y3 = (C2989Y3) this.f1088h;
            long j = this.f1087g;
            int m523v = c2989y3.m523v(j);
            interfaceC2826p.accept((c2989y3.f1068c == 0 && m523v == 0) ? ((long[]) c2989y3.f1003e)[(int) j] : ((long[][]) c2989y3.f1004f)[m523v][(int) (j - c2989y3.f1069d[m523v])]);
        }
        return m463a;
    }

    @Override // p033j$.util.stream.AbstractC3031f4
    /* renamed from: j */
    void mo388j() {
        C2989Y3 c2989y3 = new C2989Y3();
        this.f1088h = c2989y3;
        this.f1085e = this.f1082b.mo350u0(new C3103r4(c2989y3));
        this.f1086f = new C3002b(this);
    }

    @Override // p033j$.util.stream.AbstractC3031f4
    /* renamed from: k */
    AbstractC3031f4 mo387k(Spliterator spliterator) {
        return new C3109s4(this.f1082b, spliterator, this.f1081a);
    }

    @Override // p033j$.util.stream.AbstractC3031f4, p033j$.util.Spliterator
    public Spliterator.InterfaceC2774c trySplit() {
        return (Spliterator.InterfaceC2774c) super.trySplit();
    }
}
