package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2625s;
/* renamed from: j$.util.stream.V2 */
/* loaded from: classes2.dex */
final class C2753V2 extends AbstractC2806f {

    /* renamed from: h */
    private final AbstractC2748U2 f848h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2753V2(AbstractC2748U2 abstractC2748U2, AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s) {
        super(abstractC2923y2, interfaceC2625s);
        this.f848h = abstractC2748U2;
    }

    C2753V2(C2753V2 c2753v2, InterfaceC2625s interfaceC2625s) {
        super(c2753v2, interfaceC2625s);
        this.f848h = c2753v2.f848h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2806f
    /* renamed from: a */
    public Object mo386a() {
        AbstractC2923y2 abstractC2923y2 = this.f934a;
        InterfaceC2738S2 mo289a = this.f848h.mo289a();
        abstractC2923y2.mo302u0(mo289a, this.f935b);
        return mo289a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2806f
    /* renamed from: f */
    public AbstractC2806f mo385f(InterfaceC2625s interfaceC2625s) {
        return new C2753V2(this, interfaceC2625s);
    }

    @Override // p034j$.util.stream.AbstractC2806f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (!m419d()) {
            InterfaceC2738S2 interfaceC2738S2 = (InterfaceC2738S2) ((C2753V2) this.f937d).mo421b();
            interfaceC2738S2.mo494h((InterfaceC2738S2) ((C2753V2) this.f938e).mo421b());
            mo417g(interfaceC2738S2);
        }
        this.f935b = null;
        this.f938e = null;
        this.f937d = null;
    }
}
