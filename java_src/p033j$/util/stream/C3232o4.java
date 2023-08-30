package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2919a;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2959f;
import p033j$.util.function.InterfaceC2978y;
/* renamed from: j$.util.stream.o4 */
/* loaded from: classes2.dex */
final class C3232o4 extends AbstractC3178f4 implements InterfaceC2992s.InterfaceC2993a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3232o4(AbstractC3290y2 abstractC3290y2, InterfaceC2978y interfaceC2978y, boolean z) {
        super(abstractC3290y2, interfaceC2978y, z);
    }

    C3232o4(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s, boolean z) {
        super(abstractC3290y2, interfaceC2992s, z);
    }

    @Override // p033j$.util.InterfaceC2992s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2919a.m619j(this, consumer);
    }

    @Override // p033j$.util.InterfaceC3299t
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2959f interfaceC2959f) {
        if (this.f1048h != null || this.f1049i) {
            do {
            } while (tryAdvance(interfaceC2959f));
            return;
        }
        Objects.requireNonNull(interfaceC2959f);
        m416h();
        this.f1042b.mo306u0(new C3226n4(interfaceC2959f), this.f1044d);
        this.f1049i = true;
    }

    @Override // p033j$.util.InterfaceC2992s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2919a.m627b(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3178f4
    /* renamed from: j */
    void mo343j() {
        C3116U3 c3116u3 = new C3116U3();
        this.f1048h = c3116u3;
        this.f1045e = this.f1042b.mo305v0(new C3226n4(c3116u3));
        this.f1046f = new C3149b(this);
    }

    @Override // p033j$.util.InterfaceC3299t
    /* renamed from: k */
    public boolean tryAdvance(InterfaceC2959f interfaceC2959f) {
        Objects.requireNonNull(interfaceC2959f);
        boolean m418a = m418a();
        if (m418a) {
            C3116U3 c3116u3 = (C3116U3) this.f1048h;
            long j = this.f1047g;
            int m477w = c3116u3.m477w(j);
            interfaceC2959f.accept((c3116u3.f1028c == 0 && m477w == 0) ? ((double[]) c3116u3.f963e)[(int) j] : ((double[][]) c3116u3.f964f)[m477w][(int) (j - c3116u3.f1029d[m477w])]);
        }
        return m418a;
    }

    @Override // p033j$.util.stream.AbstractC3178f4
    /* renamed from: l */
    AbstractC3178f4 mo342l(InterfaceC2992s interfaceC2992s) {
        return new C3232o4(this.f1042b, interfaceC2992s, this.f1041a);
    }

    @Override // p033j$.util.stream.AbstractC3178f4, p033j$.util.InterfaceC2992s
    public InterfaceC2992s.InterfaceC2993a trySplit() {
        return (InterfaceC2992s.InterfaceC2993a) super.trySplit();
    }
}
