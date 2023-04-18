package p034j$.util.stream;

import p034j$.util.InterfaceC2688s;
/* renamed from: j$.util.stream.m1 */
/* loaded from: classes2.dex */
final class C2913m1 extends AbstractC2857d {

    /* renamed from: j */
    private final C2907l1 f993j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2913m1(C2907l1 c2907l1, AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s) {
        super(abstractC2986y2, interfaceC2688s);
        this.f993j = c2907l1;
    }

    C2913m1(C2913m1 c2913m1, InterfaceC2688s interfaceC2688s) {
        super(c2913m1, interfaceC2688s);
        this.f993j = c2913m1.f993j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2869f
    /* renamed from: a */
    public Object mo367a() {
        boolean z;
        AbstractC2986y2 abstractC2986y2 = this.f934a;
        AbstractC2895j1 abstractC2895j1 = (AbstractC2895j1) this.f993j.f987c.get();
        abstractC2986y2.mo283u0(abstractC2895j1, this.f935b);
        boolean z2 = abstractC2895j1.f971b;
        z = this.f993j.f986b.f977b;
        if (z2 == z) {
            m423l(Boolean.valueOf(z2));
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2869f
    /* renamed from: f */
    public AbstractC2869f mo366f(InterfaceC2688s interfaceC2688s) {
        return new C2913m1(this, interfaceC2688s);
    }

    @Override // p034j$.util.stream.AbstractC2857d
    /* renamed from: k */
    protected Object mo365k() {
        boolean z;
        z = this.f993j.f986b.f977b;
        return Boolean.valueOf(!z);
    }
}
