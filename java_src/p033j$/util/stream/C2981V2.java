package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p033j$.util.InterfaceC2853s;
/* renamed from: j$.util.stream.V2 */
/* loaded from: classes2.dex */
final class C2981V2 extends AbstractC3034f {

    /* renamed from: h */
    private final AbstractC2976U2 f933h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2981V2(AbstractC2976U2 abstractC2976U2, AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s) {
        super(abstractC3151y2, interfaceC2853s);
        this.f933h = abstractC2976U2;
    }

    C2981V2(C2981V2 c2981v2, InterfaceC2853s interfaceC2853s) {
        super(c2981v2, interfaceC2853s);
        this.f933h = c2981v2.f933h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3034f
    /* renamed from: a */
    public Object mo372a() {
        AbstractC3151y2 abstractC3151y2 = this.f1019a;
        InterfaceC2966S2 mo275a = this.f933h.mo275a();
        abstractC3151y2.mo288u0(mo275a, this.f1020b);
        return mo275a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3034f
    /* renamed from: f */
    public AbstractC3034f mo371f(InterfaceC2853s interfaceC2853s) {
        return new C2981V2(this, interfaceC2853s);
    }

    @Override // p033j$.util.stream.AbstractC3034f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (!m405d()) {
            InterfaceC2966S2 interfaceC2966S2 = (InterfaceC2966S2) ((C2981V2) this.f1022d).mo407b();
            interfaceC2966S2.mo480h((InterfaceC2966S2) ((C2981V2) this.f1023e).mo407b());
            mo403g(interfaceC2966S2);
        }
        this.f1020b = null;
        this.f1023e = null;
        this.f1022d = null;
    }
}
