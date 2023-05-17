package p034j$.util.stream;

import p034j$.util.InterfaceC2727s;
/* renamed from: j$.util.stream.m1 */
/* loaded from: classes2.dex */
final class C2952m1 extends AbstractC2896d {

    /* renamed from: j */
    private final C2946l1 f996j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2952m1(C2946l1 c2946l1, AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s) {
        super(abstractC3025y2, interfaceC2727s);
        this.f996j = c2946l1;
    }

    C2952m1(C2952m1 c2952m1, InterfaceC2727s interfaceC2727s) {
        super(c2952m1, interfaceC2727s);
        this.f996j = c2952m1.f996j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2908f
    /* renamed from: a */
    public Object mo372a() {
        boolean z;
        AbstractC3025y2 abstractC3025y2 = this.f937a;
        AbstractC2934j1 abstractC2934j1 = (AbstractC2934j1) this.f996j.f990c.get();
        abstractC3025y2.mo288u0(abstractC2934j1, this.f938b);
        boolean z2 = abstractC2934j1.f974b;
        z = this.f996j.f989b.f980b;
        if (z2 == z) {
            m428l(Boolean.valueOf(z2));
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2908f
    /* renamed from: f */
    public AbstractC2908f mo371f(InterfaceC2727s interfaceC2727s) {
        return new C2952m1(this, interfaceC2727s);
    }

    @Override // p034j$.util.stream.AbstractC2896d
    /* renamed from: k */
    protected Object mo370k() {
        boolean z;
        z = this.f996j.f989b.f980b;
        return Boolean.valueOf(!z);
    }
}
