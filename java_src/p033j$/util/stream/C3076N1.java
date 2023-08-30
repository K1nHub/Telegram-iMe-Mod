package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.InterfaceC2955b;
import p033j$.util.function.InterfaceC2971r;
/* renamed from: j$.util.stream.N1 */
/* loaded from: classes2.dex */
class C3076N1 extends AbstractC3173f {

    /* renamed from: h */
    protected final AbstractC3290y2 f897h;

    /* renamed from: i */
    protected final InterfaceC2971r f898i;

    /* renamed from: j */
    protected final InterfaceC2955b f899j;

    C3076N1(C3076N1 c3076n1, InterfaceC2992s interfaceC2992s) {
        super(c3076n1, interfaceC2992s);
        this.f897h = c3076n1.f897h;
        this.f898i = c3076n1.f898i;
        this.f899j = c3076n1.f899j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3076N1(AbstractC3290y2 abstractC3290y2, InterfaceC2992s interfaceC2992s, InterfaceC2971r interfaceC2971r, InterfaceC2955b interfaceC2955b) {
        super(abstractC3290y2, interfaceC2992s);
        this.f897h = abstractC3290y2;
        this.f898i = interfaceC2971r;
        this.f899j = interfaceC2955b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3173f
    /* renamed from: a */
    public Object mo390a() {
        InterfaceC3253s1 interfaceC3253s1 = (InterfaceC3253s1) this.f898i.apply(this.f897h.mo310q0(this.f1033b));
        this.f897h.mo306u0(interfaceC3253s1, this.f1033b);
        return interfaceC3253s1.mo341a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3173f
    /* renamed from: f */
    public AbstractC3173f mo389f(InterfaceC2992s interfaceC2992s) {
        return new C3076N1(this, interfaceC2992s);
    }

    @Override // p033j$.util.stream.AbstractC3173f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (!m423d()) {
            mo421g((InterfaceC2998A1) this.f899j.apply((InterfaceC2998A1) ((C3076N1) this.f1035d).mo425b(), (InterfaceC2998A1) ((C3076N1) this.f1036e).mo425b()));
        }
        this.f1033b = null;
        this.f1036e = null;
        this.f1035d = null;
    }
}
