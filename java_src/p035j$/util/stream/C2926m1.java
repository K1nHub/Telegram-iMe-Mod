package p035j$.util.stream;

import p035j$.util.InterfaceC2701s;
/* renamed from: j$.util.stream.m1 */
/* loaded from: classes2.dex */
final class C2926m1 extends AbstractC2870d {

    /* renamed from: j */
    private final C2920l1 f998j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2926m1(C2920l1 c2920l1, AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s) {
        super(abstractC2999y2, interfaceC2701s);
        this.f998j = c2920l1;
    }

    C2926m1(C2926m1 c2926m1, InterfaceC2701s interfaceC2701s) {
        super(c2926m1, interfaceC2701s);
        this.f998j = c2926m1.f998j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p035j$.util.stream.AbstractC2882f
    /* renamed from: a */
    public Object mo381a() {
        boolean z;
        AbstractC2999y2 abstractC2999y2 = this.f939a;
        AbstractC2908j1 abstractC2908j1 = (AbstractC2908j1) this.f998j.f992c.get();
        abstractC2999y2.mo297u0(abstractC2908j1, this.f940b);
        boolean z2 = abstractC2908j1.f976b;
        z = this.f998j.f991b.f982b;
        if (z2 == z) {
            m437l(Boolean.valueOf(z2));
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p035j$.util.stream.AbstractC2882f
    /* renamed from: f */
    public AbstractC2882f mo380f(InterfaceC2701s interfaceC2701s) {
        return new C2926m1(this, interfaceC2701s);
    }

    @Override // p035j$.util.stream.AbstractC2870d
    /* renamed from: k */
    protected Object mo379k() {
        boolean z;
        z = this.f998j.f991b.f982b;
        return Boolean.valueOf(!z);
    }
}
