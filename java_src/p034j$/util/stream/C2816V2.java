package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2688s;
/* renamed from: j$.util.stream.V2 */
/* loaded from: classes2.dex */
final class C2816V2 extends AbstractC2869f {

    /* renamed from: h */
    private final AbstractC2811U2 f848h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2816V2(AbstractC2811U2 abstractC2811U2, AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s) {
        super(abstractC2986y2, interfaceC2688s);
        this.f848h = abstractC2811U2;
    }

    C2816V2(C2816V2 c2816v2, InterfaceC2688s interfaceC2688s) {
        super(c2816v2, interfaceC2688s);
        this.f848h = c2816v2.f848h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2869f
    /* renamed from: a */
    public Object mo367a() {
        AbstractC2986y2 abstractC2986y2 = this.f934a;
        InterfaceC2801S2 mo270a = this.f848h.mo270a();
        abstractC2986y2.mo283u0(mo270a, this.f935b);
        return mo270a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2869f
    /* renamed from: f */
    public AbstractC2869f mo366f(InterfaceC2688s interfaceC2688s) {
        return new C2816V2(this, interfaceC2688s);
    }

    @Override // p034j$.util.stream.AbstractC2869f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (!m400d()) {
            InterfaceC2801S2 interfaceC2801S2 = (InterfaceC2801S2) ((C2816V2) this.f937d).mo402b();
            interfaceC2801S2.mo475h((InterfaceC2801S2) ((C2816V2) this.f938e).mo402b());
            mo398g(interfaceC2801S2);
        }
        this.f935b = null;
        this.f938e = null;
        this.f937d = null;
    }
}
