package p033j$.util.stream;

import p033j$.util.InterfaceC2992s;
/* renamed from: j$.util.stream.m1 */
/* loaded from: classes2.dex */
final class C3217m1 extends AbstractC3161d {

    /* renamed from: j */
    private final C3211l1 f1091j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3217m1(C3211l1 c3211l1, AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s) {
        super(abstractC3290y2, interfaceC2992s);
        this.f1091j = c3211l1;
    }

    C3217m1(C3217m1 c3217m1, InterfaceC2992s interfaceC2992s) {
        super(c3217m1, interfaceC2992s);
        this.f1091j = c3217m1.f1091j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3173f
    /* renamed from: a */
    public Object mo390a() {
        boolean z;
        AbstractC3290y2 abstractC3290y2 = this.f1032a;
        AbstractC3199j1 abstractC3199j1 = (AbstractC3199j1) this.f1091j.f1085c.get();
        abstractC3290y2.mo306u0(abstractC3199j1, this.f1033b);
        boolean z2 = abstractC3199j1.f1069b;
        z = this.f1091j.f1084b.f1075b;
        if (z2 == z) {
            m446l(Boolean.valueOf(z2));
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3173f
    /* renamed from: f */
    public AbstractC3173f mo389f(InterfaceC2992s interfaceC2992s) {
        return new C3217m1(this, interfaceC2992s);
    }

    @Override // p033j$.util.stream.AbstractC3161d
    /* renamed from: k */
    protected Object mo388k() {
        boolean z;
        z = this.f1091j.f1084b.f1075b;
        return Boolean.valueOf(!z);
    }
}
