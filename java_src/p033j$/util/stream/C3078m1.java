package p033j$.util.stream;

import p033j$.util.InterfaceC2853s;
/* renamed from: j$.util.stream.m1 */
/* loaded from: classes2.dex */
final class C3078m1 extends AbstractC3022d {

    /* renamed from: j */
    private final C3072l1 f1081j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3078m1(C3072l1 c3072l1, AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s) {
        super(abstractC3151y2, interfaceC2853s);
        this.f1081j = c3072l1;
    }

    C3078m1(C3078m1 c3078m1, InterfaceC2853s interfaceC2853s) {
        super(c3078m1, interfaceC2853s);
        this.f1081j = c3078m1.f1081j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3034f
    /* renamed from: a */
    public Object mo390a() {
        boolean z;
        AbstractC3151y2 abstractC3151y2 = this.f1022a;
        AbstractC3060j1 abstractC3060j1 = (AbstractC3060j1) this.f1081j.f1075c.get();
        abstractC3151y2.mo306u0(abstractC3060j1, this.f1023b);
        boolean z2 = abstractC3060j1.f1059b;
        z = this.f1081j.f1074b.f1065b;
        if (z2 == z) {
            m446l(Boolean.valueOf(z2));
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3034f
    /* renamed from: f */
    public AbstractC3034f mo389f(InterfaceC2853s interfaceC2853s) {
        return new C3078m1(this, interfaceC2853s);
    }

    @Override // p033j$.util.stream.AbstractC3022d
    /* renamed from: k */
    protected Object mo388k() {
        boolean z;
        z = this.f1081j.f1074b.f1065b;
        return Boolean.valueOf(!z);
    }
}
