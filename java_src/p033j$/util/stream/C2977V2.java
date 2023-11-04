package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p033j$.util.Spliterator;
/* renamed from: j$.util.stream.V2 */
/* loaded from: classes2.dex */
final class C2977V2 extends AbstractC3030f {

    /* renamed from: h */
    private final AbstractC2972U2 f986h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2977V2(AbstractC2972U2 abstractC2972U2, AbstractC3147y2 abstractC3147y2, Spliterator spliterator) {
        super(abstractC3147y2, spliterator);
        this.f986h = abstractC2972U2;
    }

    C2977V2(C2977V2 c2977v2, Spliterator spliterator) {
        super(c2977v2, spliterator);
        this.f986h = c2977v2.f986h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3030f
    /* renamed from: a */
    public Object mo436a() {
        AbstractC3147y2 abstractC3147y2 = this.f1072a;
        InterfaceC2962S2 mo339a = this.f986h.mo339a();
        abstractC3147y2.mo352t0(mo339a, this.f1073b);
        return mo339a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3030f
    /* renamed from: f */
    public AbstractC3030f mo435f(Spliterator spliterator) {
        return new C2977V2(this, spliterator);
    }

    @Override // p033j$.util.stream.AbstractC3030f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (!m469d()) {
            InterfaceC2962S2 interfaceC2962S2 = (InterfaceC2962S2) ((C2977V2) this.f1075d).mo471b();
            interfaceC2962S2.mo544h((InterfaceC2962S2) ((C2977V2) this.f1076e).mo471b());
            mo467g(interfaceC2962S2);
        }
        this.f1073b = null;
        this.f1076e = null;
        this.f1075d = null;
    }
}
