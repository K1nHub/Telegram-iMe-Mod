package p034j$.util.stream;

import p034j$.util.AbstractC2411I;
import p034j$.util.AbstractC2414a;
import p034j$.util.InterfaceC2487s;
import p034j$.util.InterfaceC2794t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2460l;
import p034j$.util.stream.AbstractC2636Z3;
/* renamed from: j$.util.stream.V3 */
/* loaded from: classes2.dex */
class C2616V3 extends AbstractC2636Z3.AbstractC2637a implements InterfaceC2487s.InterfaceC2489b {

    /* renamed from: g */
    final /* synthetic */ C2621W3 f843g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2616V3(C2621W3 c2621w3, int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.f843g = c2621w3;
    }

    @Override // p034j$.util.stream.AbstractC2636Z3.AbstractC2637a
    /* renamed from: a */
    void mo470a(Object obj, int i, Object obj2) {
        ((InterfaceC2460l) obj2).accept(((int[]) obj)[i]);
    }

    @Override // p034j$.util.InterfaceC2487s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return AbstractC2414a.m616k(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2636Z3.AbstractC2637a
    /* renamed from: f */
    InterfaceC2794t mo466f(Object obj, int i, int i2) {
        return AbstractC2411I.m632k((int[]) obj, i, i2 + i, 1040);
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2414a.m624c(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2636Z3.AbstractC2637a
    /* renamed from: h */
    InterfaceC2794t mo464h(int i, int i2, int i3, int i4) {
        return new C2616V3(this.f843g, i, i2, i3, i4);
    }
}
