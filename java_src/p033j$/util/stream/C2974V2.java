package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.V2 */
/* loaded from: classes2.dex */
final class C2974V2 extends AbstractC3027f {

    /* renamed from: h */
    private final AbstractC2969U2 f986h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2974V2(AbstractC2969U2 abstractC2969U2, AbstractC3144y2 abstractC3144y2, Spliterator spliterator) {
        super(abstractC3144y2, spliterator);
        this.f986h = abstractC2969U2;
    }

    C2974V2(C2974V2 c2974v2, Spliterator spliterator) {
        super(c2974v2, spliterator);
        this.f986h = c2974v2.f986h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3027f
    /* renamed from: a */
    public Object mo436a() {
        AbstractC3144y2 abstractC3144y2 = this.f1072a;
        InterfaceC2959S2 mo339a = this.f986h.mo339a();
        abstractC3144y2.mo352t0(mo339a, this.f1073b);
        return mo339a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3027f
    /* renamed from: f */
    public AbstractC3027f mo435f(Spliterator spliterator) {
        return new C2974V2(this, spliterator);
    }

    @Override // p033j$.util.stream.AbstractC3027f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (!m469d()) {
            InterfaceC2959S2 interfaceC2959S2 = (InterfaceC2959S2) ((C2974V2) this.f1075d).mo471b();
            interfaceC2959S2.mo544h((InterfaceC2959S2) ((C2974V2) this.f1076e).mo471b());
            mo467g(interfaceC2959S2);
        }
        this.f1073b = null;
        this.f1076e = null;
        this.f1075d = null;
    }
}
