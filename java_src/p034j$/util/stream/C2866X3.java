package p034j$.util.stream;

import p034j$.util.AbstractC2651I;
import p034j$.util.AbstractC2654a;
import p034j$.util.InterfaceC2727s;
import p034j$.util.InterfaceC3034t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2705q;
import p034j$.util.stream.AbstractC2876Z3;
/* renamed from: j$.util.stream.X3 */
/* loaded from: classes2.dex */
class C2866X3 extends AbstractC2876Z3.AbstractC2877a implements InterfaceC2727s.InterfaceC2730c {

    /* renamed from: g */
    final /* synthetic */ C2871Y3 f860g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2866X3(C2871Y3 c2871y3, int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.f860g = c2871y3;
    }

    @Override // p034j$.util.stream.AbstractC2876Z3.AbstractC2877a
    /* renamed from: a */
    void mo455a(Object obj, int i, Object obj2) {
        ((InterfaceC2705q) obj2).accept(((long[]) obj)[i]);
    }

    @Override // p034j$.util.InterfaceC2727s
    /* renamed from: b */
    public /* synthetic */ boolean mo113b(Consumer consumer) {
        return AbstractC2654a.m599l(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2876Z3.AbstractC2877a
    /* renamed from: f */
    InterfaceC3034t mo451f(Object obj, int i, int i2) {
        return AbstractC2651I.m615l((long[]) obj, i, i2 + i, 1040);
    }

    @Override // p034j$.util.InterfaceC2727s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2654a.m607d(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2876Z3.AbstractC2877a
    /* renamed from: h */
    InterfaceC3034t mo449h(int i, int i2, int i3, int i4) {
        return new C2866X3(this.f860g, i, i2, i3, i4);
    }
}
