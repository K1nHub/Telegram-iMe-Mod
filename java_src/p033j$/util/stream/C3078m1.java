package p033j$.util.stream;

import p033j$.util.InterfaceC2853s;
/* renamed from: j$.util.stream.m1 */
/* loaded from: classes2.dex */
final class C3078m1 extends AbstractC3022d {

    /* renamed from: j */
    private final C3072l1 f1078j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3078m1(C3072l1 c3072l1, AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s) {
        super(abstractC3151y2, interfaceC2853s);
        this.f1078j = c3072l1;
    }

    C3078m1(C3078m1 c3078m1, InterfaceC2853s interfaceC2853s) {
        super(c3078m1, interfaceC2853s);
        this.f1078j = c3078m1.f1078j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3034f
    /* renamed from: a */
    public Object mo372a() {
        boolean z;
        AbstractC3151y2 abstractC3151y2 = this.f1019a;
        AbstractC3060j1 abstractC3060j1 = (AbstractC3060j1) this.f1078j.f1072c.get();
        abstractC3151y2.mo288u0(abstractC3060j1, this.f1020b);
        boolean z2 = abstractC3060j1.f1056b;
        z = this.f1078j.f1071b.f1062b;
        if (z2 == z) {
            m428l(Boolean.valueOf(z2));
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3034f
    /* renamed from: f */
    public AbstractC3034f mo371f(InterfaceC2853s interfaceC2853s) {
        return new C3078m1(this, interfaceC2853s);
    }

    @Override // p033j$.util.stream.AbstractC3022d
    /* renamed from: k */
    protected Object mo370k() {
        boolean z;
        z = this.f1078j.f1071b.f1062b;
        return Boolean.valueOf(!z);
    }
}
