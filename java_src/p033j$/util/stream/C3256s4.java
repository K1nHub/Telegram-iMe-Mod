package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2919a;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2970q;
import p033j$.util.function.InterfaceC2978y;
/* renamed from: j$.util.stream.s4 */
/* loaded from: classes2.dex */
final class C3256s4 extends AbstractC3178f4 implements InterfaceC2992s.InterfaceC2995c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3256s4(AbstractC3290y2 abstractC3290y2, InterfaceC2978y interfaceC2978y, boolean z) {
        super(abstractC3290y2, interfaceC2978y, z);
    }

    C3256s4(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s, boolean z) {
        super(abstractC3290y2, interfaceC2992s, z);
    }

    @Override // p033j$.util.InterfaceC2992s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2919a.m617l(this, consumer);
    }

    @Override // p033j$.util.InterfaceC3299t
    /* renamed from: d */
    public void forEachRemaining(InterfaceC2970q interfaceC2970q) {
        if (this.f1048h != null || this.f1049i) {
            do {
            } while (tryAdvance(interfaceC2970q));
            return;
        }
        Objects.requireNonNull(interfaceC2970q);
        m416h();
        this.f1042b.mo306u0(new C3250r4(interfaceC2970q), this.f1044d);
        this.f1049i = true;
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2919a.m625d(this, consumer);
    }

    @Override // p033j$.util.InterfaceC3299t
    /* renamed from: i */
    public boolean tryAdvance(InterfaceC2970q interfaceC2970q) {
        Objects.requireNonNull(interfaceC2970q);
        boolean m418a = m418a();
        if (m418a) {
            C3136Y3 c3136y3 = (C3136Y3) this.f1048h;
            long j = this.f1047g;
            int m477w = c3136y3.m477w(j);
            interfaceC2970q.accept((c3136y3.f1028c == 0 && m477w == 0) ? ((long[]) c3136y3.f963e)[(int) j] : ((long[][]) c3136y3.f964f)[m477w][(int) (j - c3136y3.f1029d[m477w])]);
        }
        return m418a;
    }

    @Override // p033j$.util.stream.AbstractC3178f4
    /* renamed from: j */
    void mo343j() {
        C3136Y3 c3136y3 = new C3136Y3();
        this.f1048h = c3136y3;
        this.f1045e = this.f1042b.mo305v0(new C3250r4(c3136y3));
        this.f1046f = new C3149b(this);
    }

    @Override // p033j$.util.stream.AbstractC3178f4
    /* renamed from: l */
    AbstractC3178f4 mo342l(InterfaceC2992s interfaceC2992s) {
        return new C3256s4(this.f1042b, interfaceC2992s, this.f1041a);
    }

    @Override // p033j$.util.stream.AbstractC3178f4, p033j$.util.InterfaceC2992s
    public InterfaceC2992s.InterfaceC2995c trySplit() {
        return (InterfaceC2992s.InterfaceC2995c) super.trySplit();
    }
}
