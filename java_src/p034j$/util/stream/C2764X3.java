package p034j$.util.stream;

import p034j$.util.AbstractC2549I;
import p034j$.util.AbstractC2552a;
import p034j$.util.InterfaceC2625s;
import p034j$.util.InterfaceC2932t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2603q;
import p034j$.util.stream.AbstractC2774Z3;
/* renamed from: j$.util.stream.X3 */
/* loaded from: classes2.dex */
class C2764X3 extends AbstractC2774Z3.AbstractC2775a implements InterfaceC2625s.InterfaceC2628c {

    /* renamed from: g */
    final /* synthetic */ C2769Y3 f857g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2764X3(C2769Y3 c2769y3, int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.f857g = c2769y3;
    }

    @Override // p034j$.util.stream.AbstractC2774Z3.AbstractC2775a
    /* renamed from: a */
    void mo469a(Object obj, int i, Object obj2) {
        ((InterfaceC2603q) obj2).accept(((long[]) obj)[i]);
    }

    @Override // p034j$.util.InterfaceC2625s
    /* renamed from: b */
    public /* synthetic */ boolean mo127b(Consumer consumer) {
        return AbstractC2552a.m614l(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2774Z3.AbstractC2775a
    /* renamed from: f */
    InterfaceC2932t mo465f(Object obj, int i, int i2) {
        return AbstractC2549I.m630l((long[]) obj, i, i2 + i, 1040);
    }

    @Override // p034j$.util.InterfaceC2625s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2552a.m622d(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2774Z3.AbstractC2775a
    /* renamed from: h */
    InterfaceC2932t mo463h(int i, int i2, int i3, int i4) {
        return new C2764X3(this.f857g, i, i2, i3, i4);
    }
}
