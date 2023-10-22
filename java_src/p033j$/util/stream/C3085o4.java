package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2839k;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2816f;
import p033j$.util.function.InterfaceC2834x;
/* renamed from: j$.util.stream.o4 */
/* loaded from: classes2.dex */
final class C3085o4 extends AbstractC3031f4 implements Spliterator.InterfaceC2772a {
    C3085o4(AbstractC3143y2 abstractC3143y2, Spliterator spliterator, boolean z) {
        super(abstractC3143y2, spliterator, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3085o4(AbstractC3143y2 abstractC3143y2, InterfaceC2834x interfaceC2834x, boolean z) {
        super(abstractC3143y2, interfaceC2834x, z);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo178b(Consumer consumer) {
        return AbstractC2839k.m599f(this, consumer);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2775d
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2816f interfaceC2816f) {
        if (this.f1088h != null || this.f1089i) {
            do {
            } while (tryAdvance(interfaceC2816f));
            return;
        }
        Objects.requireNonNull(interfaceC2816f);
        m461h();
        this.f1082b.mo351t0(new C3079n4(interfaceC2816f), this.f1084d);
        this.f1089i = true;
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2839k.m604a(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3031f4
    /* renamed from: j */
    void mo388j() {
        C2969U3 c2969u3 = new C2969U3();
        this.f1088h = c2969u3;
        this.f1085e = this.f1082b.mo350u0(new C3079n4(c2969u3));
        this.f1086f = new C3002b(this);
    }

    @Override // p033j$.util.stream.AbstractC3031f4
    /* renamed from: k */
    AbstractC3031f4 mo387k(Spliterator spliterator) {
        return new C3085o4(this.f1082b, spliterator, this.f1081a);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2775d
    /* renamed from: n */
    public boolean tryAdvance(InterfaceC2816f interfaceC2816f) {
        Objects.requireNonNull(interfaceC2816f);
        boolean m463a = m463a();
        if (m463a) {
            C2969U3 c2969u3 = (C2969U3) this.f1088h;
            long j = this.f1087g;
            int m523v = c2969u3.m523v(j);
            interfaceC2816f.accept((c2969u3.f1068c == 0 && m523v == 0) ? ((double[]) c2969u3.f1003e)[(int) j] : ((double[][]) c2969u3.f1004f)[m523v][(int) (j - c2969u3.f1069d[m523v])]);
        }
        return m463a;
    }

    @Override // p033j$.util.stream.AbstractC3031f4, p033j$.util.Spliterator
    public Spliterator.InterfaceC2772a trySplit() {
        return (Spliterator.InterfaceC2772a) super.trySplit();
    }
}
