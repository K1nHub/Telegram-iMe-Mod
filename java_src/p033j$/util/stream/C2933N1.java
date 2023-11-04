package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p033j$.util.Spliterator;
import p033j$.util.function.InterfaceC2816b;
import p033j$.util.function.InterfaceC2831q;
/* renamed from: j$.util.stream.N1 */
/* loaded from: classes2.dex */
class C2933N1 extends AbstractC3030f {

    /* renamed from: h */
    protected final AbstractC3147y2 f937h;

    /* renamed from: i */
    protected final InterfaceC2831q f938i;

    /* renamed from: j */
    protected final InterfaceC2816b f939j;

    C2933N1(C2933N1 c2933n1, Spliterator spliterator) {
        super(c2933n1, spliterator);
        this.f937h = c2933n1.f937h;
        this.f938i = c2933n1.f938i;
        this.f939j = c2933n1.f939j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2933N1(AbstractC3147y2 abstractC3147y2, Spliterator spliterator, InterfaceC2831q interfaceC2831q, InterfaceC2816b interfaceC2816b) {
        super(abstractC3147y2, spliterator);
        this.f937h = abstractC3147y2;
        this.f938i = interfaceC2831q;
        this.f939j = interfaceC2816b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3030f
    /* renamed from: a */
    public Object mo436a() {
        InterfaceC3110s1 interfaceC3110s1 = (InterfaceC3110s1) this.f938i.apply(this.f937h.mo356p0(this.f1073b));
        this.f937h.mo352t0(interfaceC3110s1, this.f1073b);
        return interfaceC3110s1.mo387a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3030f
    /* renamed from: f */
    public AbstractC3030f mo435f(Spliterator spliterator) {
        return new C2933N1(this, spliterator);
    }

    @Override // p033j$.util.stream.AbstractC3030f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (!m469d()) {
            mo467g((InterfaceC2855A1) this.f939j.apply((InterfaceC2855A1) ((C2933N1) this.f1075d).mo471b(), (InterfaceC2855A1) ((C2933N1) this.f1076e).mo471b()));
        }
        this.f1073b = null;
        this.f1076e = null;
        this.f1075d = null;
    }
}
