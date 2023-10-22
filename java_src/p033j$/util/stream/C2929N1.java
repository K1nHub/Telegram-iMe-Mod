package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p033j$.util.Spliterator;
import p033j$.util.function.InterfaceC2812b;
import p033j$.util.function.InterfaceC2827q;
/* renamed from: j$.util.stream.N1 */
/* loaded from: classes2.dex */
class C2929N1 extends AbstractC3026f {

    /* renamed from: h */
    protected final AbstractC3143y2 f937h;

    /* renamed from: i */
    protected final InterfaceC2827q f938i;

    /* renamed from: j */
    protected final InterfaceC2812b f939j;

    C2929N1(C2929N1 c2929n1, Spliterator spliterator) {
        super(c2929n1, spliterator);
        this.f937h = c2929n1.f937h;
        this.f938i = c2929n1.f938i;
        this.f939j = c2929n1.f939j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2929N1(AbstractC3143y2 abstractC3143y2, Spliterator spliterator, InterfaceC2827q interfaceC2827q, InterfaceC2812b interfaceC2812b) {
        super(abstractC3143y2, spliterator);
        this.f937h = abstractC3143y2;
        this.f938i = interfaceC2827q;
        this.f939j = interfaceC2812b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3026f
    /* renamed from: a */
    public Object mo435a() {
        InterfaceC3106s1 interfaceC3106s1 = (InterfaceC3106s1) this.f938i.apply(this.f937h.mo355p0(this.f1073b));
        this.f937h.mo351t0(interfaceC3106s1, this.f1073b);
        return interfaceC3106s1.mo386a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3026f
    /* renamed from: f */
    public AbstractC3026f mo434f(Spliterator spliterator) {
        return new C2929N1(this, spliterator);
    }

    @Override // p033j$.util.stream.AbstractC3026f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (!m468d()) {
            mo466g((InterfaceC2851A1) this.f939j.apply((InterfaceC2851A1) ((C2929N1) this.f1075d).mo470b(), (InterfaceC2851A1) ((C2929N1) this.f1076e).mo470b()));
        }
        this.f1073b = null;
        this.f1076e = null;
        this.f1075d = null;
    }
}
