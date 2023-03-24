package p034j$.util.stream;

import p034j$.util.AbstractC2549I;
import p034j$.util.AbstractC2552a;
import p034j$.util.InterfaceC2625s;
import p034j$.util.InterfaceC2932t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2592f;
import p034j$.util.stream.AbstractC2774Z3;
/* renamed from: j$.util.stream.T3 */
/* loaded from: classes2.dex */
class C2744T3 extends AbstractC2774Z3.AbstractC2775a implements InterfaceC2625s.InterfaceC2626a {

    /* renamed from: g */
    final /* synthetic */ C2749U3 f843g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2744T3(C2749U3 c2749u3, int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.f843g = c2749u3;
    }

    @Override // p034j$.util.stream.AbstractC2774Z3.AbstractC2775a
    /* renamed from: a */
    void mo469a(Object obj, int i, Object obj2) {
        ((InterfaceC2592f) obj2).accept(((double[]) obj)[i]);
    }

    @Override // p034j$.util.InterfaceC2625s
    /* renamed from: b */
    public /* synthetic */ boolean mo127b(Consumer consumer) {
        return AbstractC2552a.m616j(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2774Z3.AbstractC2775a
    /* renamed from: f */
    InterfaceC2932t mo465f(Object obj, int i, int i2) {
        return AbstractC2549I.m632j((double[]) obj, i, i2 + i, 1040);
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2552a.m624b(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2774Z3.AbstractC2775a
    /* renamed from: h */
    InterfaceC2932t mo463h(int i, int i2, int i3, int i4) {
        return new C2744T3(this.f843g, i, i2, i3, i4);
    }
}
