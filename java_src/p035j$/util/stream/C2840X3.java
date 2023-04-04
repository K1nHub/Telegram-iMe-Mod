package p035j$.util.stream;

import p035j$.util.AbstractC2625I;
import p035j$.util.AbstractC2628a;
import p035j$.util.InterfaceC2701s;
import p035j$.util.InterfaceC3008t;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2679q;
import p035j$.util.stream.AbstractC2850Z3;
/* renamed from: j$.util.stream.X3 */
/* loaded from: classes2.dex */
class C2840X3 extends AbstractC2850Z3.AbstractC2851a implements InterfaceC2701s.InterfaceC2704c {

    /* renamed from: g */
    final /* synthetic */ C2845Y3 f862g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2840X3(C2845Y3 c2845y3, int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.f862g = c2845y3;
    }

    @Override // p035j$.util.stream.AbstractC2850Z3.AbstractC2851a
    /* renamed from: a */
    void mo464a(Object obj, int i, Object obj2) {
        ((InterfaceC2679q) obj2).accept(((long[]) obj)[i]);
    }

    @Override // p035j$.util.InterfaceC2701s
    /* renamed from: b */
    public /* synthetic */ boolean mo122b(Consumer consumer) {
        return AbstractC2628a.m609l(this, consumer);
    }

    @Override // p035j$.util.stream.AbstractC2850Z3.AbstractC2851a
    /* renamed from: f */
    InterfaceC3008t mo460f(Object obj, int i, int i2) {
        return AbstractC2625I.m625l((long[]) obj, i, i2 + i, 1040);
    }

    @Override // p035j$.util.InterfaceC2701s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2628a.m617d(this, consumer);
    }

    @Override // p035j$.util.stream.AbstractC2850Z3.AbstractC2851a
    /* renamed from: h */
    InterfaceC3008t mo458h(int i, int i2, int i3, int i4) {
        return new C2840X3(this.f862g, i, i2, i3, i4);
    }
}
