package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2727s;
/* renamed from: j$.util.stream.V2 */
/* loaded from: classes2.dex */
final class C2855V2 extends AbstractC2908f {

    /* renamed from: h */
    private final AbstractC2850U2 f851h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2855V2(AbstractC2850U2 abstractC2850U2, AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s) {
        super(abstractC3025y2, interfaceC2727s);
        this.f851h = abstractC2850U2;
    }

    C2855V2(C2855V2 c2855v2, InterfaceC2727s interfaceC2727s) {
        super(c2855v2, interfaceC2727s);
        this.f851h = c2855v2.f851h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2908f
    /* renamed from: a */
    public Object mo372a() {
        AbstractC3025y2 abstractC3025y2 = this.f937a;
        InterfaceC2840S2 mo275a = this.f851h.mo275a();
        abstractC3025y2.mo288u0(mo275a, this.f938b);
        return mo275a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2908f
    /* renamed from: f */
    public AbstractC2908f mo371f(InterfaceC2727s interfaceC2727s) {
        return new C2855V2(this, interfaceC2727s);
    }

    @Override // p034j$.util.stream.AbstractC2908f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (!m405d()) {
            InterfaceC2840S2 interfaceC2840S2 = (InterfaceC2840S2) ((C2855V2) this.f940d).mo407b();
            interfaceC2840S2.mo480h((InterfaceC2840S2) ((C2855V2) this.f941e).mo407b());
            mo403g(interfaceC2840S2);
        }
        this.f938b = null;
        this.f941e = null;
        this.f940d = null;
    }
}
