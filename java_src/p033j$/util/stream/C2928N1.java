package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p033j$.util.Spliterator;
import p033j$.util.function.InterfaceC2811b;
import p033j$.util.function.InterfaceC2826q;
/* renamed from: j$.util.stream.N1 */
/* loaded from: classes2.dex */
class C2928N1 extends AbstractC3025f {

    /* renamed from: h */
    protected final AbstractC3142y2 f937h;

    /* renamed from: i */
    protected final InterfaceC2826q f938i;

    /* renamed from: j */
    protected final InterfaceC2811b f939j;

    C2928N1(C2928N1 c2928n1, Spliterator spliterator) {
        super(c2928n1, spliterator);
        this.f937h = c2928n1.f937h;
        this.f938i = c2928n1.f938i;
        this.f939j = c2928n1.f939j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2928N1(AbstractC3142y2 abstractC3142y2, Spliterator spliterator, InterfaceC2826q interfaceC2826q, InterfaceC2811b interfaceC2811b) {
        super(abstractC3142y2, spliterator);
        this.f937h = abstractC3142y2;
        this.f938i = interfaceC2826q;
        this.f939j = interfaceC2811b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3025f
    /* renamed from: a */
    public Object mo439a() {
        InterfaceC3105s1 interfaceC3105s1 = (InterfaceC3105s1) this.f938i.apply(this.f937h.mo359p0(this.f1073b));
        this.f937h.mo355t0(interfaceC3105s1, this.f1073b);
        return interfaceC3105s1.mo390a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3025f
    /* renamed from: f */
    public AbstractC3025f mo438f(Spliterator spliterator) {
        return new C2928N1(this, spliterator);
    }

    @Override // p033j$.util.stream.AbstractC3025f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (!m472d()) {
            mo470g((InterfaceC2850A1) this.f939j.apply((InterfaceC2850A1) ((C2928N1) this.f1075d).mo474b(), (InterfaceC2850A1) ((C2928N1) this.f1076e).mo474b()));
        }
        this.f1073b = null;
        this.f1076e = null;
        this.f1075d = null;
    }
}
