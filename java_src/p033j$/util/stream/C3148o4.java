package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2835a;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2875f;
import p033j$.util.function.InterfaceC2894y;
/* renamed from: j$.util.stream.o4 */
/* loaded from: classes2.dex */
final class C3148o4 extends AbstractC3094f4 implements InterfaceC2908s.InterfaceC2909a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3148o4(AbstractC3206y2 abstractC3206y2, InterfaceC2894y interfaceC2894y, boolean z) {
        super(abstractC3206y2, interfaceC2894y, z);
    }

    C3148o4(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s, boolean z) {
        super(abstractC3206y2, interfaceC2908s, z);
    }

    @Override // p033j$.util.InterfaceC2908s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2835a.m619j(this, consumer);
    }

    @Override // p033j$.util.InterfaceC3215t
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2875f interfaceC2875f) {
        if (this.f1039h != null || this.f1040i) {
            do {
            } while (tryAdvance(interfaceC2875f));
            return;
        }
        Objects.requireNonNull(interfaceC2875f);
        m416h();
        this.f1033b.mo306u0(new C3142n4(interfaceC2875f), this.f1035d);
        this.f1040i = true;
    }

    @Override // p033j$.util.InterfaceC2908s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2835a.m627b(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3094f4
    /* renamed from: j */
    void mo343j() {
        C3032U3 c3032u3 = new C3032U3();
        this.f1039h = c3032u3;
        this.f1036e = this.f1033b.mo305v0(new C3142n4(c3032u3));
        this.f1037f = new C3065b(this);
    }

    @Override // p033j$.util.InterfaceC3215t
    /* renamed from: k */
    public boolean tryAdvance(InterfaceC2875f interfaceC2875f) {
        Objects.requireNonNull(interfaceC2875f);
        boolean m418a = m418a();
        if (m418a) {
            C3032U3 c3032u3 = (C3032U3) this.f1039h;
            long j = this.f1038g;
            int m477w = c3032u3.m477w(j);
            interfaceC2875f.accept((c3032u3.f1019c == 0 && m477w == 0) ? ((double[]) c3032u3.f954e)[(int) j] : ((double[][]) c3032u3.f955f)[m477w][(int) (j - c3032u3.f1020d[m477w])]);
        }
        return m418a;
    }

    @Override // p033j$.util.stream.AbstractC3094f4
    /* renamed from: l */
    AbstractC3094f4 mo342l(InterfaceC2908s interfaceC2908s) {
        return new C3148o4(this.f1033b, interfaceC2908s, this.f1032a);
    }

    @Override // p033j$.util.stream.AbstractC3094f4, p033j$.util.InterfaceC2908s
    public InterfaceC2908s.InterfaceC2909a trySplit() {
        return (InterfaceC2908s.InterfaceC2909a) super.trySplit();
    }
}
