package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.InterfaceC2574b;
import p034j$.util.function.InterfaceC2590r;
/* renamed from: j$.util.stream.N1 */
/* loaded from: classes2.dex */
class C2695N1 extends AbstractC2792f {

    /* renamed from: h */
    protected final AbstractC2909y2 f798h;

    /* renamed from: i */
    protected final InterfaceC2590r f799i;

    /* renamed from: j */
    protected final InterfaceC2574b f800j;

    C2695N1(C2695N1 c2695n1, InterfaceC2611s interfaceC2611s) {
        super(c2695n1, interfaceC2611s);
        this.f798h = c2695n1.f798h;
        this.f799i = c2695n1.f799i;
        this.f800j = c2695n1.f800j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2695N1(AbstractC2909y2 abstractC2909y2, InterfaceC2611s interfaceC2611s, InterfaceC2590r interfaceC2590r, InterfaceC2574b interfaceC2574b) {
        super(abstractC2909y2, interfaceC2611s);
        this.f798h = abstractC2909y2;
        this.f799i = interfaceC2590r;
        this.f800j = interfaceC2574b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2792f
    /* renamed from: a */
    public Object mo387a() {
        InterfaceC2872s1 interfaceC2872s1 = (InterfaceC2872s1) this.f799i.apply(this.f798h.mo307q0(this.f934b));
        this.f798h.mo303u0(interfaceC2872s1, this.f934b);
        return interfaceC2872s1.mo338a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2792f
    /* renamed from: f */
    public AbstractC2792f mo386f(InterfaceC2611s interfaceC2611s) {
        return new C2695N1(this, interfaceC2611s);
    }

    @Override // p034j$.util.stream.AbstractC2792f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (!m420d()) {
            mo418g((InterfaceC2617A1) this.f800j.apply((InterfaceC2617A1) ((C2695N1) this.f936d).mo422b(), (InterfaceC2617A1) ((C2695N1) this.f937e).mo422b()));
        }
        this.f934b = null;
        this.f937e = null;
        this.f936d = null;
    }
}
