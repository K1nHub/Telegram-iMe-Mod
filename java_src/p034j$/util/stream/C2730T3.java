package p034j$.util.stream;

import p034j$.util.AbstractC2535I;
import p034j$.util.AbstractC2538a;
import p034j$.util.InterfaceC2611s;
import p034j$.util.InterfaceC2918t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2578f;
import p034j$.util.stream.AbstractC2760Z3;
/* renamed from: j$.util.stream.T3 */
/* loaded from: classes2.dex */
class C2730T3 extends AbstractC2760Z3.AbstractC2761a implements InterfaceC2611s.InterfaceC2612a {

    /* renamed from: g */
    final /* synthetic */ C2735U3 f842g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2730T3(C2735U3 c2735u3, int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.f842g = c2735u3;
    }

    @Override // p034j$.util.stream.AbstractC2760Z3.AbstractC2761a
    /* renamed from: a */
    void mo470a(Object obj, int i, Object obj2) {
        ((InterfaceC2578f) obj2).accept(((double[]) obj)[i]);
    }

    @Override // p034j$.util.InterfaceC2611s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return AbstractC2538a.m617j(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2760Z3.AbstractC2761a
    /* renamed from: f */
    InterfaceC2918t mo466f(Object obj, int i, int i2) {
        return AbstractC2535I.m633j((double[]) obj, i, i2 + i, 1040);
    }

    @Override // p034j$.util.InterfaceC2611s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2538a.m625b(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2760Z3.AbstractC2761a
    /* renamed from: h */
    InterfaceC2918t mo464h(int i, int i2, int i3, int i4) {
        return new C2730T3(this.f842g, i, i2, i3, i4);
    }
}
