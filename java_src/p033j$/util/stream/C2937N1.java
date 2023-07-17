package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.InterfaceC2816b;
import p033j$.util.function.InterfaceC2832r;
/* renamed from: j$.util.stream.N1 */
/* loaded from: classes2.dex */
class C2937N1 extends AbstractC3034f {

    /* renamed from: h */
    protected final AbstractC3151y2 f884h;

    /* renamed from: i */
    protected final InterfaceC2832r f885i;

    /* renamed from: j */
    protected final InterfaceC2816b f886j;

    C2937N1(C2937N1 c2937n1, InterfaceC2853s interfaceC2853s) {
        super(c2937n1, interfaceC2853s);
        this.f884h = c2937n1.f884h;
        this.f885i = c2937n1.f885i;
        this.f886j = c2937n1.f886j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2937N1(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, InterfaceC2832r interfaceC2832r, InterfaceC2816b interfaceC2816b) {
        super(abstractC3151y2, interfaceC2853s);
        this.f884h = abstractC3151y2;
        this.f885i = interfaceC2832r;
        this.f886j = interfaceC2816b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3034f
    /* renamed from: a */
    public Object mo372a() {
        InterfaceC3114s1 interfaceC3114s1 = (InterfaceC3114s1) this.f885i.apply(this.f884h.mo292q0(this.f1020b));
        this.f884h.mo288u0(interfaceC3114s1, this.f1020b);
        return interfaceC3114s1.mo323a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3034f
    /* renamed from: f */
    public AbstractC3034f mo371f(InterfaceC2853s interfaceC2853s) {
        return new C2937N1(this, interfaceC2853s);
    }

    @Override // p033j$.util.stream.AbstractC3034f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (!m405d()) {
            mo403g((InterfaceC2859A1) this.f886j.apply((InterfaceC2859A1) ((C2937N1) this.f1022d).mo407b(), (InterfaceC2859A1) ((C2937N1) this.f1023e).mo407b()));
        }
        this.f1020b = null;
        this.f1023e = null;
        this.f1022d = null;
    }
}
