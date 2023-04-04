package p035j$.util.stream;

import p035j$.util.AbstractC2625I;
import p035j$.util.AbstractC2628a;
import p035j$.util.InterfaceC2701s;
import p035j$.util.InterfaceC3008t;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2674l;
import p035j$.util.stream.AbstractC2850Z3;
/* renamed from: j$.util.stream.V3 */
/* loaded from: classes2.dex */
class C2830V3 extends AbstractC2850Z3.AbstractC2851a implements InterfaceC2701s.InterfaceC2703b {

    /* renamed from: g */
    final /* synthetic */ C2835W3 f854g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2830V3(C2835W3 c2835w3, int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.f854g = c2835w3;
    }

    @Override // p035j$.util.stream.AbstractC2850Z3.AbstractC2851a
    /* renamed from: a */
    void mo464a(Object obj, int i, Object obj2) {
        ((InterfaceC2674l) obj2).accept(((int[]) obj)[i]);
    }

    @Override // p035j$.util.InterfaceC2701s
    /* renamed from: b */
    public /* synthetic */ boolean mo122b(Consumer consumer) {
        return AbstractC2628a.m610k(this, consumer);
    }

    @Override // p035j$.util.stream.AbstractC2850Z3.AbstractC2851a
    /* renamed from: f */
    InterfaceC3008t mo460f(Object obj, int i, int i2) {
        return AbstractC2625I.m626k((int[]) obj, i, i2 + i, 1040);
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2628a.m618c(this, consumer);
    }

    @Override // p035j$.util.stream.AbstractC2850Z3.AbstractC2851a
    /* renamed from: h */
    InterfaceC3008t mo458h(int i, int i2, int i3, int i4) {
        return new C2830V3(this.f854g, i, i2, i3, i4);
    }
}
