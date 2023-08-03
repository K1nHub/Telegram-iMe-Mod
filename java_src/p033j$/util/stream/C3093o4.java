package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.AbstractC2780a;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2820f;
import p033j$.util.function.InterfaceC2839y;
/* renamed from: j$.util.stream.o4 */
/* loaded from: classes2.dex */
final class C3093o4 extends AbstractC3039f4 implements InterfaceC2853s.InterfaceC2854a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3093o4(AbstractC3151y2 abstractC3151y2, InterfaceC2839y interfaceC2839y, boolean z) {
        super(abstractC3151y2, interfaceC2839y, z);
    }

    C3093o4(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, boolean z) {
        super(abstractC3151y2, interfaceC2853s, z);
    }

    @Override // p033j$.util.InterfaceC2853s
    /* renamed from: b */
    public /* synthetic */ boolean mo131b(Consumer consumer) {
        return AbstractC2780a.m619j(this, consumer);
    }

    @Override // p033j$.util.InterfaceC3160t
    /* renamed from: e */
    public void forEachRemaining(InterfaceC2820f interfaceC2820f) {
        if (this.f1038h != null || this.f1039i) {
            do {
            } while (tryAdvance(interfaceC2820f));
            return;
        }
        Objects.requireNonNull(interfaceC2820f);
        m416h();
        this.f1032b.mo306u0(new C3087n4(interfaceC2820f), this.f1034d);
        this.f1039i = true;
    }

    @Override // p033j$.util.InterfaceC2853s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2780a.m627b(this, consumer);
    }

    @Override // p033j$.util.stream.AbstractC3039f4
    /* renamed from: j */
    void mo343j() {
        C2977U3 c2977u3 = new C2977U3();
        this.f1038h = c2977u3;
        this.f1035e = this.f1032b.mo305v0(new C3087n4(c2977u3));
        this.f1036f = new C3010b(this);
    }

    @Override // p033j$.util.InterfaceC3160t
    /* renamed from: k */
    public boolean tryAdvance(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        boolean m418a = m418a();
        if (m418a) {
            C2977U3 c2977u3 = (C2977U3) this.f1038h;
            long j = this.f1037g;
            int m477w = c2977u3.m477w(j);
            interfaceC2820f.accept((c2977u3.f1018c == 0 && m477w == 0) ? ((double[]) c2977u3.f953e)[(int) j] : ((double[][]) c2977u3.f954f)[m477w][(int) (j - c2977u3.f1019d[m477w])]);
        }
        return m418a;
    }

    @Override // p033j$.util.stream.AbstractC3039f4
    /* renamed from: l */
    AbstractC3039f4 mo342l(InterfaceC2853s interfaceC2853s) {
        return new C3093o4(this.f1032b, interfaceC2853s, this.f1031a);
    }

    @Override // p033j$.util.stream.AbstractC3039f4, p033j$.util.InterfaceC2853s
    public InterfaceC2853s.InterfaceC2854a trySplit() {
        return (InterfaceC2853s.InterfaceC2854a) super.trySplit();
    }
}
