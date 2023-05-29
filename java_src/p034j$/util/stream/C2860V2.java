package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2732s;
/* renamed from: j$.util.stream.V2 */
/* loaded from: classes2.dex */
final class C2860V2 extends AbstractC2913f {

    /* renamed from: h */
    private final AbstractC2855U2 f851h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2860V2(AbstractC2855U2 abstractC2855U2, AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s) {
        super(abstractC3030y2, interfaceC2732s);
        this.f851h = abstractC2855U2;
    }

    C2860V2(C2860V2 c2860v2, InterfaceC2732s interfaceC2732s) {
        super(c2860v2, interfaceC2732s);
        this.f851h = c2860v2.f851h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2913f
    /* renamed from: a */
    public Object mo372a() {
        AbstractC3030y2 abstractC3030y2 = this.f937a;
        InterfaceC2845S2 mo275a = this.f851h.mo275a();
        abstractC3030y2.mo288u0(mo275a, this.f938b);
        return mo275a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2913f
    /* renamed from: f */
    public AbstractC2913f mo371f(InterfaceC2732s interfaceC2732s) {
        return new C2860V2(this, interfaceC2732s);
    }

    @Override // p034j$.util.stream.AbstractC2913f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (!m405d()) {
            InterfaceC2845S2 interfaceC2845S2 = (InterfaceC2845S2) ((C2860V2) this.f940d).mo407b();
            interfaceC2845S2.mo480h((InterfaceC2845S2) ((C2860V2) this.f941e).mo407b());
            mo403g(interfaceC2845S2);
        }
        this.f938b = null;
        this.f941e = null;
        this.f940d = null;
    }
}
