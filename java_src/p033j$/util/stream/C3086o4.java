package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2840k;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2817f;
import p033j$.util.function.InterfaceC2835x;
/* renamed from: j$.util.stream.o4 */
/* loaded from: classes2.dex */
final class C3086o4 extends AbstractC3032f4 implements Spliterator.InterfaceC2773a {
    C3086o4(AbstractC3144y2 abstractC3144y2, Spliterator spliterator, boolean z) {
        super(abstractC3144y2, spliterator, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3086o4(AbstractC3144y2 abstractC3144y2, InterfaceC2835x interfaceC2835x, boolean z) {
        super(abstractC3144y2, interfaceC2835x, z);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return AbstractC2840k.m600f(this, consumer);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2776d
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2817f interfaceC2817f) {
        if (this.f1088h != null || this.f1089i) {
            do {
            } while (tryAdvance(interfaceC2817f));
            return;
        }
        Objects.requireNonNull(interfaceC2817f);
        m462h();
        this.f1082b.mo352t0(new C3080n4(interfaceC2817f), this.f1084d);
        this.f1089i = true;
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2840k.m605a(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3032f4
    /* renamed from: j */
    void mo389j() {
        C2970U3 c2970u3 = new C2970U3();
        this.f1088h = c2970u3;
        this.f1085e = this.f1082b.mo351u0(new C3080n4(c2970u3));
        this.f1086f = new C3003b(this);
    }

    @Override // p033j$.util.stream.AbstractC3032f4
    /* renamed from: k */
    AbstractC3032f4 mo388k(Spliterator spliterator) {
        return new C3086o4(this.f1082b, spliterator, this.f1081a);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2776d
    /* renamed from: n */
    public boolean tryAdvance(InterfaceC2817f interfaceC2817f) {
        Objects.requireNonNull(interfaceC2817f);
        boolean m464a = m464a();
        if (m464a) {
            C2970U3 c2970u3 = (C2970U3) this.f1088h;
            long j = this.f1087g;
            int m524v = c2970u3.m524v(j);
            interfaceC2817f.accept((c2970u3.f1068c == 0 && m524v == 0) ? ((double[]) c2970u3.f1003e)[(int) j] : ((double[][]) c2970u3.f1004f)[m524v][(int) (j - c2970u3.f1069d[m524v])]);
        }
        return m464a;
    }

    @Override // p033j$.util.stream.AbstractC3032f4, p033j$.util.Spliterator
    public Spliterator.InterfaceC2773a trySplit() {
        return (Spliterator.InterfaceC2773a) super.trySplit();
    }
}
