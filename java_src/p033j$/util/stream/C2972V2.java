package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.V2 */
/* loaded from: classes2.dex */
final class C2972V2 extends AbstractC3025f {

    /* renamed from: h */
    private final AbstractC2967U2 f986h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2972V2(AbstractC2967U2 abstractC2967U2, AbstractC3142y2 abstractC3142y2, Spliterator spliterator) {
        super(abstractC3142y2, spliterator);
        this.f986h = abstractC2967U2;
    }

    C2972V2(C2972V2 c2972v2, Spliterator spliterator) {
        super(c2972v2, spliterator);
        this.f986h = c2972v2.f986h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3025f
    /* renamed from: a */
    public Object mo439a() {
        AbstractC3142y2 abstractC3142y2 = this.f1072a;
        InterfaceC2957S2 mo342a = this.f986h.mo342a();
        abstractC3142y2.mo355t0(mo342a, this.f1073b);
        return mo342a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3025f
    /* renamed from: f */
    public AbstractC3025f mo438f(Spliterator spliterator) {
        return new C2972V2(this, spliterator);
    }

    @Override // p033j$.util.stream.AbstractC3025f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (!m472d()) {
            InterfaceC2957S2 interfaceC2957S2 = (InterfaceC2957S2) ((C2972V2) this.f1075d).mo474b();
            interfaceC2957S2.mo547h((InterfaceC2957S2) ((C2972V2) this.f1076e).mo474b());
            mo470g(interfaceC2957S2);
        }
        this.f1073b = null;
        this.f1076e = null;
        this.f1075d = null;
    }
}
