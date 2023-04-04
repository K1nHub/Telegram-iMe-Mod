package p035j$.util.stream;

import p035j$.util.AbstractC2625I;
import p035j$.util.AbstractC2628a;
import p035j$.util.InterfaceC2701s;
import p035j$.util.InterfaceC3008t;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2668f;
import p035j$.util.stream.AbstractC2850Z3;
/* renamed from: j$.util.stream.T3 */
/* loaded from: classes2.dex */
class C2820T3 extends AbstractC2850Z3.AbstractC2851a implements InterfaceC2701s.InterfaceC2702a {

    /* renamed from: g */
    final /* synthetic */ C2825U3 f848g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2820T3(C2825U3 c2825u3, int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.f848g = c2825u3;
    }

    @Override // p035j$.util.stream.AbstractC2850Z3.AbstractC2851a
    /* renamed from: a */
    void mo464a(Object obj, int i, Object obj2) {
        ((InterfaceC2668f) obj2).accept(((double[]) obj)[i]);
    }

    @Override // p035j$.util.InterfaceC2701s
    /* renamed from: b */
    public /* synthetic */ boolean mo122b(Consumer consumer) {
        return AbstractC2628a.m611j(this, consumer);
    }

    @Override // p035j$.util.stream.AbstractC2850Z3.AbstractC2851a
    /* renamed from: f */
    InterfaceC3008t mo460f(Object obj, int i, int i2) {
        return AbstractC2625I.m627j((double[]) obj, i, i2 + i, 1040);
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2628a.m619b(this, consumer);
    }

    @Override // p035j$.util.stream.AbstractC2850Z3.AbstractC2851a
    /* renamed from: h */
    InterfaceC3008t mo458h(int i, int i2, int i3, int i4) {
        return new C2820T3(this.f848g, i, i2, i3, i4);
    }
}
