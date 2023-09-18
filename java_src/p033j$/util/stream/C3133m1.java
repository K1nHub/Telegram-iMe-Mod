package p033j$.util.stream;

import p033j$.util.InterfaceC2908s;
/* renamed from: j$.util.stream.m1 */
/* loaded from: classes2.dex */
final class C3133m1 extends AbstractC3077d {

    /* renamed from: j */
    private final C3127l1 f1082j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3133m1(C3127l1 c3127l1, AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s) {
        super(abstractC3206y2, interfaceC2908s);
        this.f1082j = c3127l1;
    }

    C3133m1(C3133m1 c3133m1, InterfaceC2908s interfaceC2908s) {
        super(c3133m1, interfaceC2908s);
        this.f1082j = c3133m1.f1082j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3089f
    /* renamed from: a */
    public Object mo390a() {
        boolean z;
        AbstractC3206y2 abstractC3206y2 = this.f1023a;
        AbstractC3115j1 abstractC3115j1 = (AbstractC3115j1) this.f1082j.f1076c.get();
        abstractC3206y2.mo306u0(abstractC3115j1, this.f1024b);
        boolean z2 = abstractC3115j1.f1060b;
        z = this.f1082j.f1075b.f1066b;
        if (z2 == z) {
            m446l(Boolean.valueOf(z2));
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3089f
    /* renamed from: f */
    public AbstractC3089f mo389f(InterfaceC2908s interfaceC2908s) {
        return new C3133m1(this, interfaceC2908s);
    }

    @Override // p033j$.util.stream.AbstractC3077d
    /* renamed from: k */
    protected Object mo388k() {
        boolean z;
        z = this.f1082j.f1075b.f1066b;
        return Boolean.valueOf(!z);
    }
}
