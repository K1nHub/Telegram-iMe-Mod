package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.InterfaceC2450b;
import p034j$.util.function.InterfaceC2466r;
/* renamed from: j$.util.stream.N1 */
/* loaded from: classes2.dex */
class C2571N1 extends AbstractC2668f {

    /* renamed from: h */
    protected final AbstractC2785y2 f793h;

    /* renamed from: i */
    protected final InterfaceC2466r f794i;

    /* renamed from: j */
    protected final InterfaceC2450b f795j;

    C2571N1(C2571N1 c2571n1, InterfaceC2487s interfaceC2487s) {
        super(c2571n1, interfaceC2487s);
        this.f793h = c2571n1.f793h;
        this.f794i = c2571n1.f794i;
        this.f795j = c2571n1.f795j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2571N1(AbstractC2785y2 abstractC2785y2, InterfaceC2487s interfaceC2487s, InterfaceC2466r interfaceC2466r, InterfaceC2450b interfaceC2450b) {
        super(abstractC2785y2, interfaceC2487s);
        this.f793h = abstractC2785y2;
        this.f794i = interfaceC2466r;
        this.f795j = interfaceC2450b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2668f
    /* renamed from: a */
    public Object mo387a() {
        InterfaceC2748s1 interfaceC2748s1 = (InterfaceC2748s1) this.f794i.apply(this.f793h.mo307q0(this.f929b));
        this.f793h.mo303u0(interfaceC2748s1, this.f929b);
        return interfaceC2748s1.mo338a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2668f
    /* renamed from: f */
    public AbstractC2668f mo386f(InterfaceC2487s interfaceC2487s) {
        return new C2571N1(this, interfaceC2487s);
    }

    @Override // p034j$.util.stream.AbstractC2668f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (!m420d()) {
            mo418g((InterfaceC2493A1) this.f795j.apply((InterfaceC2493A1) ((C2571N1) this.f931d).mo422b(), (InterfaceC2493A1) ((C2571N1) this.f932e).mo422b()));
        }
        this.f929b = null;
        this.f932e = null;
        this.f931d = null;
    }
}
