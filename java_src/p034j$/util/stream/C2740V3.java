package p034j$.util.stream;

import p034j$.util.AbstractC2535I;
import p034j$.util.AbstractC2538a;
import p034j$.util.InterfaceC2611s;
import p034j$.util.InterfaceC2918t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2584l;
import p034j$.util.stream.AbstractC2760Z3;
/* renamed from: j$.util.stream.V3 */
/* loaded from: classes2.dex */
class C2740V3 extends AbstractC2760Z3.AbstractC2761a implements InterfaceC2611s.InterfaceC2613b {

    /* renamed from: g */
    final /* synthetic */ C2745W3 f848g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2740V3(C2745W3 c2745w3, int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.f848g = c2745w3;
    }

    @Override // p034j$.util.stream.AbstractC2760Z3.AbstractC2761a
    /* renamed from: a */
    void mo470a(Object obj, int i, Object obj2) {
        ((InterfaceC2584l) obj2).accept(((int[]) obj)[i]);
    }

    @Override // p034j$.util.InterfaceC2611s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return AbstractC2538a.m616k(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2760Z3.AbstractC2761a
    /* renamed from: f */
    InterfaceC2918t mo466f(Object obj, int i, int i2) {
        return AbstractC2535I.m632k((int[]) obj, i, i2 + i, 1040);
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2538a.m624c(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2760Z3.AbstractC2761a
    /* renamed from: h */
    InterfaceC2918t mo464h(int i, int i2, int i3, int i4) {
        return new C2740V3(this.f848g, i, i2, i3, i4);
    }
}
