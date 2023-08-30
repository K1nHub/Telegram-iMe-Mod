package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2919a;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2965l;
import p033j$.util.function.InterfaceC2978y;
/* renamed from: j$.util.stream.q4 */
/* loaded from: classes2.dex */
final class C3244q4 extends AbstractC3178f4 implements InterfaceC2992s.InterfaceC2994b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3244q4(AbstractC3290y2 abstractC3290y2, InterfaceC2978y interfaceC2978y, boolean z) {
        super(abstractC3290y2, interfaceC2978y, z);
    }

    C3244q4(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s, boolean z) {
        super(abstractC3290y2, interfaceC2992s, z);
    }

    @Override // p033j$.util.InterfaceC2992s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2919a.m618k(this, consumer);
    }

    @Override // p033j$.util.InterfaceC3299t
    /* renamed from: c */
    public void forEachRemaining(InterfaceC2965l interfaceC2965l) {
        if (this.f1048h != null || this.f1049i) {
            do {
            } while (tryAdvance(interfaceC2965l));
            return;
        }
        Objects.requireNonNull(interfaceC2965l);
        m416h();
        this.f1042b.mo306u0(new C3238p4(interfaceC2965l), this.f1044d);
        this.f1049i = true;
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2919a.m626c(this, consumer);
    }

    @Override // p033j$.util.InterfaceC3299t
    /* renamed from: g */
    public boolean tryAdvance(InterfaceC2965l interfaceC2965l) {
        Objects.requireNonNull(interfaceC2965l);
        boolean m418a = m418a();
        if (m418a) {
            C3126W3 c3126w3 = (C3126W3) this.f1048h;
            long j = this.f1047g;
            int m477w = c3126w3.m477w(j);
            interfaceC2965l.accept((c3126w3.f1028c == 0 && m477w == 0) ? ((int[]) c3126w3.f963e)[(int) j] : ((int[][]) c3126w3.f964f)[m477w][(int) (j - c3126w3.f1029d[m477w])]);
        }
        return m418a;
    }

    @Override // p033j$.util.stream.AbstractC3178f4
    /* renamed from: j */
    void mo343j() {
        C3126W3 c3126w3 = new C3126W3();
        this.f1048h = c3126w3;
        this.f1045e = this.f1042b.mo305v0(new C3238p4(c3126w3));
        this.f1046f = new C3149b(this);
    }

    @Override // p033j$.util.stream.AbstractC3178f4
    /* renamed from: l */
    AbstractC3178f4 mo342l(InterfaceC2992s interfaceC2992s) {
        return new C3244q4(this.f1042b, interfaceC2992s, this.f1041a);
    }

    @Override // p033j$.util.stream.AbstractC3178f4, p033j$.util.InterfaceC2992s
    public InterfaceC2992s.InterfaceC2994b trySplit() {
        return (InterfaceC2992s.InterfaceC2994b) super.trySplit();
    }
}
