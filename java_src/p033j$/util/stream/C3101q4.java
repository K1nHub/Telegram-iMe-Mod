package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2843k;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826l;
import p033j$.util.function.InterfaceC2838x;
/* renamed from: j$.util.stream.q4 */
/* loaded from: classes2.dex */
final class C3101q4 extends AbstractC3035f4 implements Spliterator.InterfaceC2777b {
    C3101q4(AbstractC3147y2 abstractC3147y2, Spliterator spliterator, boolean z) {
        super(abstractC3147y2, spliterator, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3101q4(AbstractC3147y2 abstractC3147y2, InterfaceC2838x interfaceC2838x, boolean z) {
        super(abstractC3147y2, interfaceC2838x, z);
    }

    @Override // p033j$.util.Spliterator
    /* renamed from: b */
    public /* synthetic */ boolean mo179b(Consumer consumer) {
        return AbstractC2843k.m599g(this, consumer);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2779d
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2826l interfaceC2826l) {
        if (this.f1088h != null || this.f1089i) {
            do {
            } while (tryAdvance(interfaceC2826l));
            return;
        }
        Objects.requireNonNull(interfaceC2826l);
        m462h();
        this.f1082b.mo352t0(new C3095p4(interfaceC2826l), this.f1084d);
        this.f1089i = true;
    }

    @Override // p033j$.util.Spliterator
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2843k.m604b(this, consumer);
    }

    @Override // p033j$.util.Spliterator.InterfaceC2779d
    /* renamed from: g */
    public boolean tryAdvance(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        boolean m464a = m464a();
        if (m464a) {
            C2983W3 c2983w3 = (C2983W3) this.f1088h;
            long j = this.f1087g;
            int m524v = c2983w3.m524v(j);
            interfaceC2826l.accept((c2983w3.f1068c == 0 && m524v == 0) ? ((int[]) c2983w3.f1003e)[(int) j] : ((int[][]) c2983w3.f1004f)[m524v][(int) (j - c2983w3.f1069d[m524v])]);
        }
        return m464a;
    }

    @Override // p033j$.util.stream.AbstractC3035f4
    /* renamed from: j */
    void mo389j() {
        C2983W3 c2983w3 = new C2983W3();
        this.f1088h = c2983w3;
        this.f1085e = this.f1082b.mo351u0(new C3095p4(c2983w3));
        this.f1086f = new C3006b(this);
    }

    @Override // p033j$.util.stream.AbstractC3035f4
    /* renamed from: k */
    AbstractC3035f4 mo388k(Spliterator spliterator) {
        return new C3101q4(this.f1082b, spliterator, this.f1081a);
    }

    @Override // p033j$.util.stream.AbstractC3035f4, p033j$.util.Spliterator
    public Spliterator.InterfaceC2777b trySplit() {
        return (Spliterator.InterfaceC2777b) super.trySplit();
    }
}
