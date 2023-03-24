package p034j$.util.stream;

import p034j$.util.InterfaceC2625s;
/* renamed from: j$.util.stream.m1 */
/* loaded from: classes2.dex */
final class C2850m1 extends AbstractC2794d {

    /* renamed from: j */
    private final C2844l1 f993j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2850m1(C2844l1 c2844l1, AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s) {
        super(abstractC2923y2, interfaceC2625s);
        this.f993j = c2844l1;
    }

    C2850m1(C2850m1 c2850m1, InterfaceC2625s interfaceC2625s) {
        super(c2850m1, interfaceC2625s);
        this.f993j = c2850m1.f993j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2806f
    /* renamed from: a */
    public Object mo386a() {
        boolean z;
        AbstractC2923y2 abstractC2923y2 = this.f934a;
        AbstractC2832j1 abstractC2832j1 = (AbstractC2832j1) this.f993j.f987c.get();
        abstractC2923y2.mo302u0(abstractC2832j1, this.f935b);
        boolean z2 = abstractC2832j1.f971b;
        z = this.f993j.f986b.f977b;
        if (z2 == z) {
            m442l(Boolean.valueOf(z2));
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2806f
    /* renamed from: f */
    public AbstractC2806f mo385f(InterfaceC2625s interfaceC2625s) {
        return new C2850m1(this, interfaceC2625s);
    }

    @Override // p034j$.util.stream.AbstractC2794d
    /* renamed from: k */
    protected Object mo384k() {
        boolean z;
        z = this.f993j.f986b.f977b;
        return Boolean.valueOf(!z);
    }
}
