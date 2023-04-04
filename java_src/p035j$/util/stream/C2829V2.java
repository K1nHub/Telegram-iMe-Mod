package p035j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p035j$.util.InterfaceC2701s;
/* renamed from: j$.util.stream.V2 */
/* loaded from: classes2.dex */
final class C2829V2 extends AbstractC2882f {

    /* renamed from: h */
    private final AbstractC2824U2 f853h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2829V2(AbstractC2824U2 abstractC2824U2, AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s) {
        super(abstractC2999y2, interfaceC2701s);
        this.f853h = abstractC2824U2;
    }

    C2829V2(C2829V2 c2829v2, InterfaceC2701s interfaceC2701s) {
        super(c2829v2, interfaceC2701s);
        this.f853h = c2829v2.f853h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p035j$.util.stream.AbstractC2882f
    /* renamed from: a */
    public Object mo381a() {
        AbstractC2999y2 abstractC2999y2 = this.f939a;
        InterfaceC2814S2 mo284a = this.f853h.mo284a();
        abstractC2999y2.mo297u0(mo284a, this.f940b);
        return mo284a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p035j$.util.stream.AbstractC2882f
    /* renamed from: f */
    public AbstractC2882f mo380f(InterfaceC2701s interfaceC2701s) {
        return new C2829V2(this, interfaceC2701s);
    }

    @Override // p035j$.util.stream.AbstractC2882f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (!m414d()) {
            InterfaceC2814S2 interfaceC2814S2 = (InterfaceC2814S2) ((C2829V2) this.f942d).mo416b();
            interfaceC2814S2.mo489h((InterfaceC2814S2) ((C2829V2) this.f943e).mo416b());
            mo412g(interfaceC2814S2);
        }
        this.f940b = null;
        this.f943e = null;
        this.f942d = null;
    }
}
