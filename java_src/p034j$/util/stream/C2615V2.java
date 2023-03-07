package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2487s;
/* renamed from: j$.util.stream.V2 */
/* loaded from: classes2.dex */
final class C2615V2 extends AbstractC2668f {

    /* renamed from: h */
    private final AbstractC2610U2 f842h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2615V2(AbstractC2610U2 abstractC2610U2, AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s) {
        super(abstractC2785y2, interfaceC2487s);
        this.f842h = abstractC2610U2;
    }

    C2615V2(C2615V2 c2615v2, InterfaceC2487s interfaceC2487s) {
        super(c2615v2, interfaceC2487s);
        this.f842h = c2615v2.f842h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2668f
    /* renamed from: a */
    public Object mo387a() {
        AbstractC2785y2 abstractC2785y2 = this.f928a;
        InterfaceC2600S2 mo290a = this.f842h.mo290a();
        abstractC2785y2.mo303u0(mo290a, this.f929b);
        return mo290a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2668f
    /* renamed from: f */
    public AbstractC2668f mo386f(InterfaceC2487s interfaceC2487s) {
        return new C2615V2(this, interfaceC2487s);
    }

    @Override // p034j$.util.stream.AbstractC2668f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (!m420d()) {
            InterfaceC2600S2 interfaceC2600S2 = (InterfaceC2600S2) ((C2615V2) this.f931d).mo422b();
            interfaceC2600S2.mo495h((InterfaceC2600S2) ((C2615V2) this.f932e).mo422b());
            mo418g(interfaceC2600S2);
        }
        this.f929b = null;
        this.f932e = null;
        this.f931d = null;
    }
}
