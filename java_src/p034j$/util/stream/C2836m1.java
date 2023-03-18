package p034j$.util.stream;

import p034j$.util.InterfaceC2611s;
/* renamed from: j$.util.stream.m1 */
/* loaded from: classes2.dex */
final class C2836m1 extends AbstractC2780d {

    /* renamed from: j */
    private final C2830l1 f992j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2836m1(C2830l1 c2830l1, AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s) {
        super(abstractC2909y2, interfaceC2611s);
        this.f992j = c2830l1;
    }

    C2836m1(C2836m1 c2836m1, InterfaceC2611s interfaceC2611s) {
        super(c2836m1, interfaceC2611s);
        this.f992j = c2836m1.f992j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2792f
    /* renamed from: a */
    public Object mo387a() {
        boolean z;
        AbstractC2909y2 abstractC2909y2 = this.f933a;
        AbstractC2818j1 abstractC2818j1 = (AbstractC2818j1) this.f992j.f986c.get();
        abstractC2909y2.mo303u0(abstractC2818j1, this.f934b);
        boolean z2 = abstractC2818j1.f970b;
        z = this.f992j.f985b.f976b;
        if (z2 == z) {
            m443l(Boolean.valueOf(z2));
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2792f
    /* renamed from: f */
    public AbstractC2792f mo386f(InterfaceC2611s interfaceC2611s) {
        return new C2836m1(this, interfaceC2611s);
    }

    @Override // p034j$.util.stream.AbstractC2780d
    /* renamed from: k */
    protected Object mo385k() {
        boolean z;
        z = this.f992j.f985b.f976b;
        return Boolean.valueOf(!z);
    }
}
