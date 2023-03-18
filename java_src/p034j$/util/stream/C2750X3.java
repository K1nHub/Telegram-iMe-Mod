package p034j$.util.stream;

import p034j$.util.AbstractC2535I;
import p034j$.util.AbstractC2538a;
import p034j$.util.InterfaceC2611s;
import p034j$.util.InterfaceC2918t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2589q;
import p034j$.util.stream.AbstractC2760Z3;
/* renamed from: j$.util.stream.X3 */
/* loaded from: classes2.dex */
class C2750X3 extends AbstractC2760Z3.AbstractC2761a implements InterfaceC2611s.InterfaceC2614c {

    /* renamed from: g */
    final /* synthetic */ C2755Y3 f856g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2750X3(C2755Y3 c2755y3, int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.f856g = c2755y3;
    }

    @Override // p034j$.util.stream.AbstractC2760Z3.AbstractC2761a
    /* renamed from: a */
    void mo470a(Object obj, int i, Object obj2) {
        ((InterfaceC2589q) obj2).accept(((long[]) obj)[i]);
    }

    @Override // p034j$.util.InterfaceC2611s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return AbstractC2538a.m615l(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2760Z3.AbstractC2761a
    /* renamed from: f */
    InterfaceC2918t mo466f(Object obj, int i, int i2) {
        return AbstractC2535I.m631l((long[]) obj, i, i2 + i, 1040);
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2538a.m623d(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2760Z3.AbstractC2761a
    /* renamed from: h */
    InterfaceC2918t mo464h(int i, int i2, int i3, int i4) {
        return new C2750X3(this.f856g, i, i2, i3, i4);
    }
}
