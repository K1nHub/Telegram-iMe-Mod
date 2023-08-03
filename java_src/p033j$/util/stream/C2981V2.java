package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p033j$.util.InterfaceC2853s;
/* renamed from: j$.util.stream.V2 */
/* loaded from: classes2.dex */
final class C2981V2 extends AbstractC3034f {

    /* renamed from: h */
    private final AbstractC2976U2 f936h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2981V2(AbstractC2976U2 abstractC2976U2, AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s) {
        super(abstractC3151y2, interfaceC2853s);
        this.f936h = abstractC2976U2;
    }

    C2981V2(C2981V2 c2981v2, InterfaceC2853s interfaceC2853s) {
        super(c2981v2, interfaceC2853s);
        this.f936h = c2981v2.f936h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3034f
    /* renamed from: a */
    public Object mo390a() {
        AbstractC3151y2 abstractC3151y2 = this.f1022a;
        InterfaceC2966S2 mo293a = this.f936h.mo293a();
        abstractC3151y2.mo306u0(mo293a, this.f1023b);
        return mo293a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3034f
    /* renamed from: f */
    public AbstractC3034f mo389f(InterfaceC2853s interfaceC2853s) {
        return new C2981V2(this, interfaceC2853s);
    }

    @Override // p033j$.util.stream.AbstractC3034f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (!m423d()) {
            InterfaceC2966S2 interfaceC2966S2 = (InterfaceC2966S2) ((C2981V2) this.f1025d).mo425b();
            interfaceC2966S2.mo498h((InterfaceC2966S2) ((C2981V2) this.f1026e).mo425b());
            mo421g(interfaceC2966S2);
        }
        this.f1023b = null;
        this.f1026e = null;
        this.f1025d = null;
    }
}
