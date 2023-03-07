package p034j$.util.stream;

import p034j$.util.AbstractC2411I;
import p034j$.util.AbstractC2414a;
import p034j$.util.InterfaceC2487s;
import p034j$.util.InterfaceC2794t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2465q;
import p034j$.util.stream.AbstractC2636Z3;
/* renamed from: j$.util.stream.X3 */
/* loaded from: classes2.dex */
class C2626X3 extends AbstractC2636Z3.AbstractC2637a implements InterfaceC2487s.InterfaceC2490c {

    /* renamed from: g */
    final /* synthetic */ C2631Y3 f851g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2626X3(C2631Y3 c2631y3, int i, int i2, int i3, int i4) {
        super(i, i2, i3, i4);
        this.f851g = c2631y3;
    }

    @Override // p034j$.util.stream.AbstractC2636Z3.AbstractC2637a
    /* renamed from: a */
    void mo470a(Object obj, int i, Object obj2) {
        ((InterfaceC2465q) obj2).accept(((long[]) obj)[i]);
    }

    @Override // p034j$.util.InterfaceC2487s
    /* renamed from: b */
    public /* synthetic */ boolean mo128b(Consumer consumer) {
        return AbstractC2414a.m615l(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2636Z3.AbstractC2637a
    /* renamed from: f */
    InterfaceC2794t mo466f(Object obj, int i, int i2) {
        return AbstractC2411I.m631l((long[]) obj, i, i2 + i, 1040);
    }

    @Override // p034j$.util.InterfaceC2487s
    public /* synthetic */ void forEachRemaining(Consumer consumer) {
        AbstractC2414a.m623d(this, consumer);
    }

    @Override // p034j$.util.stream.AbstractC2636Z3.AbstractC2637a
    /* renamed from: h */
    InterfaceC2794t mo464h(int i, int i2, int i3, int i4) {
        return new C2626X3(this.f851g, i, i2, i3, i4);
    }
}
