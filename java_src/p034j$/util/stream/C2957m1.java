package p034j$.util.stream;

import p034j$.util.InterfaceC2732s;
/* renamed from: j$.util.stream.m1 */
/* loaded from: classes2.dex */
final class C2957m1 extends AbstractC2901d {

    /* renamed from: j */
    private final C2951l1 f996j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2957m1(C2951l1 c2951l1, AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s) {
        super(abstractC3030y2, interfaceC2732s);
        this.f996j = c2951l1;
    }

    C2957m1(C2957m1 c2957m1, InterfaceC2732s interfaceC2732s) {
        super(c2957m1, interfaceC2732s);
        this.f996j = c2957m1.f996j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2913f
    /* renamed from: a */
    public Object mo372a() {
        boolean z;
        AbstractC3030y2 abstractC3030y2 = this.f937a;
        AbstractC2939j1 abstractC2939j1 = (AbstractC2939j1) this.f996j.f990c.get();
        abstractC3030y2.mo288u0(abstractC2939j1, this.f938b);
        boolean z2 = abstractC2939j1.f974b;
        z = this.f996j.f989b.f980b;
        if (z2 == z) {
            m428l(Boolean.valueOf(z2));
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2913f
    /* renamed from: f */
    public AbstractC2913f mo371f(InterfaceC2732s interfaceC2732s) {
        return new C2957m1(this, interfaceC2732s);
    }

    @Override // p034j$.util.stream.AbstractC2901d
    /* renamed from: k */
    protected Object mo370k() {
        boolean z;
        z = this.f996j.f989b.f980b;
        return Boolean.valueOf(!z);
    }
}
