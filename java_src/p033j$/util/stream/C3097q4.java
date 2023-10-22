package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2839k;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2822l;
import p033j$.util.function.InterfaceC2834x;
/* renamed from: j$.util.stream.q4 */
/* loaded from: classes2.dex */
final class C3097q4 extends AbstractC3031f4 implements Spliterator.InterfaceC2773b {
    C3097q4(AbstractC3143y2 abstractC3143y2, Spliterator spliterator, boolean z) {
        super(abstractC3143y2, spliterator, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3097q4(AbstractC3143y2 abstractC3143y2, InterfaceC2834x interfaceC2834x, boolean z) {
        super(abstractC3143y2, interfaceC2834x, z);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo178b(Consumer consumer) {
        return AbstractC2839k.m598g(this, consumer);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2775d
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2822l interfaceC2822l) {
        if (this.f1088h != null || this.f1089i) {
            do {
            } while (tryAdvance(interfaceC2822l));
            return;
        }
        Objects.requireNonNull(interfaceC2822l);
        m461h();
        this.f1082b.mo351t0(new C3091p4(interfaceC2822l), this.f1084d);
        this.f1089i = true;
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2839k.m603b(this, consumer);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2775d
    /* renamed from: g */
    public boolean tryAdvance(InterfaceC2822l interfaceC2822l) {
        Objects.requireNonNull(interfaceC2822l);
        boolean m463a = m463a();
        if (m463a) {
            C2979W3 c2979w3 = (C2979W3) this.f1088h;
            long j = this.f1087g;
            int m523v = c2979w3.m523v(j);
            interfaceC2822l.accept((c2979w3.f1068c == 0 && m523v == 0) ? ((int[]) c2979w3.f1003e)[(int) j] : ((int[][]) c2979w3.f1004f)[m523v][(int) (j - c2979w3.f1069d[m523v])]);
        }
        return m463a;
    }

    @Override // p033j$.util.stream.AbstractC3031f4
    /* renamed from: j */
    void mo388j() {
        C2979W3 c2979w3 = new C2979W3();
        this.f1088h = c2979w3;
        this.f1085e = this.f1082b.mo350u0(new C3091p4(c2979w3));
        this.f1086f = new C3002b(this);
    }

    @Override // p033j$.util.stream.AbstractC3031f4
    /* renamed from: k */
    AbstractC3031f4 mo387k(Spliterator spliterator) {
        return new C3097q4(this.f1082b, spliterator, this.f1081a);
    }

    @Override // p033j$.util.stream.AbstractC3031f4, p033j$.util.Spliterator
    public Spliterator.InterfaceC2773b trySplit() {
        return (Spliterator.InterfaceC2773b) super.trySplit();
    }
}
