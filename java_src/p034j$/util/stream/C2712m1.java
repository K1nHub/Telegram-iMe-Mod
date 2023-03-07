package p034j$.util.stream;

import p034j$.util.InterfaceC2487s;
/* renamed from: j$.util.stream.m1 */
/* loaded from: classes2.dex */
final class C2712m1 extends AbstractC2656d {

    /* renamed from: j */
    private final C2706l1 f987j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2712m1(C2706l1 c2706l1, AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s) {
        super(abstractC2785y2, interfaceC2487s);
        this.f987j = c2706l1;
    }

    C2712m1(C2712m1 c2712m1, InterfaceC2487s interfaceC2487s) {
        super(c2712m1, interfaceC2487s);
        this.f987j = c2712m1.f987j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2668f
    /* renamed from: a */
    public Object mo387a() {
        boolean z;
        AbstractC2785y2 abstractC2785y2 = this.f928a;
        AbstractC2694j1 abstractC2694j1 = (AbstractC2694j1) this.f987j.f981c.get();
        abstractC2785y2.mo303u0(abstractC2694j1, this.f929b);
        boolean z2 = abstractC2694j1.f965b;
        z = this.f987j.f980b.f971b;
        if (z2 == z) {
            m443l(Boolean.valueOf(z2));
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2668f
    /* renamed from: f */
    public AbstractC2668f mo386f(InterfaceC2487s interfaceC2487s) {
        return new C2712m1(this, interfaceC2487s);
    }

    @Override // p034j$.util.stream.AbstractC2656d
    /* renamed from: k */
    protected Object mo385k() {
        boolean z;
        z = this.f987j.f980b.f971b;
        return Boolean.valueOf(!z);
    }
}
