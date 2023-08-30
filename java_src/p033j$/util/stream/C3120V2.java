package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p033j$.util.InterfaceC2992s;
/* renamed from: j$.util.stream.V2 */
/* loaded from: classes2.dex */
final class C3120V2 extends AbstractC3173f {

    /* renamed from: h */
    private final AbstractC3115U2 f946h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3120V2(AbstractC3115U2 abstractC3115U2, AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s) {
        super(abstractC3290y2, interfaceC2992s);
        this.f946h = abstractC3115U2;
    }

    C3120V2(C3120V2 c3120v2, InterfaceC2992s interfaceC2992s) {
        super(c3120v2, interfaceC2992s);
        this.f946h = c3120v2.f946h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3173f
    /* renamed from: a */
    public Object mo390a() {
        AbstractC3290y2 abstractC3290y2 = this.f1032a;
        InterfaceC3105S2 mo293a = this.f946h.mo293a();
        abstractC3290y2.mo306u0(mo293a, this.f1033b);
        return mo293a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3173f
    /* renamed from: f */
    public AbstractC3173f mo389f(InterfaceC2992s interfaceC2992s) {
        return new C3120V2(this, interfaceC2992s);
    }

    @Override // p033j$.util.stream.AbstractC3173f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (!m423d()) {
            InterfaceC3105S2 interfaceC3105S2 = (InterfaceC3105S2) ((C3120V2) this.f1035d).mo425b();
            interfaceC3105S2.mo498h((InterfaceC3105S2) ((C3120V2) this.f1036e).mo425b());
            mo421g(interfaceC3105S2);
        }
        this.f1033b = null;
        this.f1036e = null;
        this.f1035d = null;
    }
}
