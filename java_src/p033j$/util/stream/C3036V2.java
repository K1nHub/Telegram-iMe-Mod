package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p033j$.util.InterfaceC2908s;
/* renamed from: j$.util.stream.V2 */
/* loaded from: classes2.dex */
final class C3036V2 extends AbstractC3089f {

    /* renamed from: h */
    private final AbstractC3031U2 f937h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3036V2(AbstractC3031U2 abstractC3031U2, AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s) {
        super(abstractC3206y2, interfaceC2908s);
        this.f937h = abstractC3031U2;
    }

    C3036V2(C3036V2 c3036v2, InterfaceC2908s interfaceC2908s) {
        super(c3036v2, interfaceC2908s);
        this.f937h = c3036v2.f937h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3089f
    /* renamed from: a */
    public Object mo390a() {
        AbstractC3206y2 abstractC3206y2 = this.f1023a;
        InterfaceC3021S2 mo293a = this.f937h.mo293a();
        abstractC3206y2.mo306u0(mo293a, this.f1024b);
        return mo293a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3089f
    /* renamed from: f */
    public AbstractC3089f mo389f(InterfaceC2908s interfaceC2908s) {
        return new C3036V2(this, interfaceC2908s);
    }

    @Override // p033j$.util.stream.AbstractC3089f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (!m423d()) {
            InterfaceC3021S2 interfaceC3021S2 = (InterfaceC3021S2) ((C3036V2) this.f1026d).mo425b();
            interfaceC3021S2.mo498h((InterfaceC3021S2) ((C3036V2) this.f1027e).mo425b());
            mo421g(interfaceC3021S2);
        }
        this.f1024b = null;
        this.f1027e = null;
        this.f1026d = null;
    }
}
