package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.V2 */
/* loaded from: classes2.dex */
final class C2973V2 extends AbstractC3026f {

    /* renamed from: h */
    private final AbstractC2968U2 f986h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2973V2(AbstractC2968U2 abstractC2968U2, AbstractC3143y2 abstractC3143y2, Spliterator spliterator) {
        super(abstractC3143y2, spliterator);
        this.f986h = abstractC2968U2;
    }

    C2973V2(C2973V2 c2973v2, Spliterator spliterator) {
        super(c2973v2, spliterator);
        this.f986h = c2973v2.f986h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3026f
    /* renamed from: a */
    public Object mo435a() {
        AbstractC3143y2 abstractC3143y2 = this.f1072a;
        InterfaceC2958S2 mo338a = this.f986h.mo338a();
        abstractC3143y2.mo351t0(mo338a, this.f1073b);
        return mo338a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3026f
    /* renamed from: f */
    public AbstractC3026f mo434f(Spliterator spliterator) {
        return new C2973V2(this, spliterator);
    }

    @Override // p033j$.util.stream.AbstractC3026f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (!m468d()) {
            InterfaceC2958S2 interfaceC2958S2 = (InterfaceC2958S2) ((C2973V2) this.f1075d).mo470b();
            interfaceC2958S2.mo543h((InterfaceC2958S2) ((C2973V2) this.f1076e).mo470b());
            mo466g(interfaceC2958S2);
        }
        this.f1073b = null;
        this.f1076e = null;
        this.f1075d = null;
    }
}
