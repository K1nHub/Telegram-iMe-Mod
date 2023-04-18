package p034j$.util.stream;

import p034j$.util.AbstractC2612I;
import p034j$.util.AbstractC2615a;
import p034j$.util.InterfaceC2688s;
import p034j$.util.InterfaceC2995t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2661l;
import p034j$.util.stream.AbstractC2837Z3;
/* renamed from: j$.util.stream.V3 */
/* loaded from: classes2.dex */
class C2817V3 extends AbstractC2837Z3.AbstractC2838a implements InterfaceC2688s.InterfaceC2690b {

    /* renamed from: g */
    final /* synthetic */ C2822W3 f849g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2817V3(C2822W3 c2822w3, int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.f849g = c2822w3;
    }

    @Override // p034j$.util.stream.AbstractC2837Z3.AbstractC2838a
    /* renamed from: a */
    void mo450a(Object obj, int i, Object obj2) {
        ((InterfaceC2661l) obj2).accept(((int[]) obj)[i]);
    }

    @Override // p034j$.util.InterfaceC2688s
    /* renamed from: b */
    public /* synthetic */ boolean mo108b(Consumer consumer) {
        return AbstractC2615a.m596k(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2837Z3.AbstractC2838a
    /* renamed from: f */
    InterfaceC2995t mo446f(Object obj, int i, int i2) {
        return AbstractC2612I.m612k((int[]) obj, i, i2 + i, 1040);
    }

    @Override // p034j$.util.InterfaceC2688s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2615a.m604c(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2837Z3.AbstractC2838a
    /* renamed from: h */
    InterfaceC2995t mo444h(int i, int i2, int i3, int i4) {
        return new C2817V3(this.f849g, i, i2, i3, i4);
    }
}
