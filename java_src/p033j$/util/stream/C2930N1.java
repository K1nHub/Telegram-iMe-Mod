package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p033j$.util.Spliterator;
import p033j$.util.function.InterfaceC2813b;
import p033j$.util.function.InterfaceC2828q;
/* renamed from: j$.util.stream.N1 */
/* loaded from: classes2.dex */
class C2930N1 extends AbstractC3027f {

    /* renamed from: h */
    protected final AbstractC3144y2 f937h;

    /* renamed from: i */
    protected final InterfaceC2828q f938i;

    /* renamed from: j */
    protected final InterfaceC2813b f939j;

    C2930N1(C2930N1 c2930n1, Spliterator spliterator) {
        super(c2930n1, spliterator);
        this.f937h = c2930n1.f937h;
        this.f938i = c2930n1.f938i;
        this.f939j = c2930n1.f939j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2930N1(AbstractC3144y2 abstractC3144y2, Spliterator spliterator, InterfaceC2828q interfaceC2828q, InterfaceC2813b interfaceC2813b) {
        super(abstractC3144y2, spliterator);
        this.f937h = abstractC3144y2;
        this.f938i = interfaceC2828q;
        this.f939j = interfaceC2813b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3027f
    /* renamed from: a */
    public Object mo436a() {
        InterfaceC3107s1 interfaceC3107s1 = (InterfaceC3107s1) this.f938i.apply(this.f937h.mo356p0(this.f1073b));
        this.f937h.mo352t0(interfaceC3107s1, this.f1073b);
        return interfaceC3107s1.mo387a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3027f
    /* renamed from: f */
    public AbstractC3027f mo435f(Spliterator spliterator) {
        return new C2930N1(this, spliterator);
    }

    @Override // p033j$.util.stream.AbstractC3027f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (!m469d()) {
            mo467g((InterfaceC2852A1) this.f939j.apply((InterfaceC2852A1) ((C2930N1) this.f1075d).mo471b(), (InterfaceC2852A1) ((C2930N1) this.f1076e).mo471b()));
        }
        this.f1073b = null;
        this.f1076e = null;
        this.f1075d = null;
    }
}
