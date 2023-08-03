package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.InterfaceC2816b;
import p033j$.util.function.InterfaceC2832r;
/* renamed from: j$.util.stream.N1 */
/* loaded from: classes2.dex */
class C2937N1 extends AbstractC3034f {

    /* renamed from: h */
    protected final AbstractC3151y2 f887h;

    /* renamed from: i */
    protected final InterfaceC2832r f888i;

    /* renamed from: j */
    protected final InterfaceC2816b f889j;

    C2937N1(C2937N1 c2937n1, InterfaceC2853s interfaceC2853s) {
        super(c2937n1, interfaceC2853s);
        this.f887h = c2937n1.f887h;
        this.f888i = c2937n1.f888i;
        this.f889j = c2937n1.f889j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2937N1(AbstractC3151y2 abstractC3151y2, InterfaceC2853s interfaceC2853s, InterfaceC2832r interfaceC2832r, InterfaceC2816b interfaceC2816b) {
        super(abstractC3151y2, interfaceC2853s);
        this.f887h = abstractC3151y2;
        this.f888i = interfaceC2832r;
        this.f889j = interfaceC2816b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3034f
    /* renamed from: a */
    public Object mo390a() {
        InterfaceC3114s1 interfaceC3114s1 = (InterfaceC3114s1) this.f888i.apply(this.f887h.mo310q0(this.f1023b));
        this.f887h.mo306u0(interfaceC3114s1, this.f1023b);
        return interfaceC3114s1.mo341a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3034f
    /* renamed from: f */
    public AbstractC3034f mo389f(InterfaceC2853s interfaceC2853s) {
        return new C2937N1(this, interfaceC2853s);
    }

    @Override // p033j$.util.stream.AbstractC3034f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (!m423d()) {
            mo421g((InterfaceC2859A1) this.f889j.apply((InterfaceC2859A1) ((C2937N1) this.f1025d).mo425b(), (InterfaceC2859A1) ((C2937N1) this.f1026e).mo425b()));
        }
        this.f1023b = null;
        this.f1026e = null;
        this.f1025d = null;
    }
}
