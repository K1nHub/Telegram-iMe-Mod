package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2611s;
/* renamed from: j$.util.stream.V2 */
/* loaded from: classes2.dex */
final class C2739V2 extends AbstractC2792f {

    /* renamed from: h */
    private final AbstractC2734U2 f847h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2739V2(AbstractC2734U2 abstractC2734U2, AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s) {
        super(abstractC2909y2, interfaceC2611s);
        this.f847h = abstractC2734U2;
    }

    C2739V2(C2739V2 c2739v2, InterfaceC2611s interfaceC2611s) {
        super(c2739v2, interfaceC2611s);
        this.f847h = c2739v2.f847h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2792f
    /* renamed from: a */
    public Object mo387a() {
        AbstractC2909y2 abstractC2909y2 = this.f933a;
        InterfaceC2724S2 mo290a = this.f847h.mo290a();
        abstractC2909y2.mo303u0(mo290a, this.f934b);
        return mo290a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2792f
    /* renamed from: f */
    public AbstractC2792f mo386f(InterfaceC2611s interfaceC2611s) {
        return new C2739V2(this, interfaceC2611s);
    }

    @Override // p034j$.util.stream.AbstractC2792f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (!m420d()) {
            InterfaceC2724S2 interfaceC2724S2 = (InterfaceC2724S2) ((C2739V2) this.f936d).mo422b();
            interfaceC2724S2.mo495h((InterfaceC2724S2) ((C2739V2) this.f937e).mo422b());
            mo418g(interfaceC2724S2);
        }
        this.f934b = null;
        this.f937e = null;
        this.f936d = null;
    }
}
