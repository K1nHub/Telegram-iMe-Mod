package p034j$.util.stream;

import p034j$.util.AbstractC2549I;
import p034j$.util.AbstractC2552a;
import p034j$.util.InterfaceC2625s;
import p034j$.util.InterfaceC2932t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2598l;
import p034j$.util.stream.AbstractC2774Z3;
/* renamed from: j$.util.stream.V3 */
/* loaded from: classes2.dex */
class C2754V3 extends AbstractC2774Z3.AbstractC2775a implements InterfaceC2625s.InterfaceC2627b {

    /* renamed from: g */
    final /* synthetic */ C2759W3 f849g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2754V3(C2759W3 c2759w3, int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.f849g = c2759w3;
    }

    @Override // p034j$.util.stream.AbstractC2774Z3.AbstractC2775a
    /* renamed from: a */
    void mo469a(Object obj, int i, Object obj2) {
        ((InterfaceC2598l) obj2).accept(((int[]) obj)[i]);
    }

    @Override // p034j$.util.InterfaceC2625s
    /* renamed from: b */
    public /* synthetic */ boolean mo127b(Consumer consumer) {
        return AbstractC2552a.m615k(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2774Z3.AbstractC2775a
    /* renamed from: f */
    InterfaceC2932t mo465f(Object obj, int i, int i2) {
        return AbstractC2549I.m631k((int[]) obj, i, i2 + i, 1040);
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2552a.m623c(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2774Z3.AbstractC2775a
    /* renamed from: h */
    InterfaceC2932t mo463h(int i, int i2, int i3, int i4) {
        return new C2754V3(this.f849g, i, i2, i3, i4);
    }
}
