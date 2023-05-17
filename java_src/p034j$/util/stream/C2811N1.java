package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.InterfaceC2690b;
import p034j$.util.function.InterfaceC2706r;
/* renamed from: j$.util.stream.N1 */
/* loaded from: classes2.dex */
class C2811N1 extends AbstractC2908f {

    /* renamed from: h */
    protected final AbstractC3025y2 f802h;

    /* renamed from: i */
    protected final InterfaceC2706r f803i;

    /* renamed from: j */
    protected final InterfaceC2690b f804j;

    C2811N1(C2811N1 c2811n1, InterfaceC2727s interfaceC2727s) {
        super(c2811n1, interfaceC2727s);
        this.f802h = c2811n1.f802h;
        this.f803i = c2811n1.f803i;
        this.f804j = c2811n1.f804j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2811N1(AbstractC3025y2 abstractC3025y2, InterfaceC2727s interfaceC2727s, InterfaceC2706r interfaceC2706r, InterfaceC2690b interfaceC2690b) {
        super(abstractC3025y2, interfaceC2727s);
        this.f802h = abstractC3025y2;
        this.f803i = interfaceC2706r;
        this.f804j = interfaceC2690b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2908f
    /* renamed from: a */
    public Object mo372a() {
        InterfaceC2988s1 interfaceC2988s1 = (InterfaceC2988s1) this.f803i.apply(this.f802h.mo292q0(this.f938b));
        this.f802h.mo288u0(interfaceC2988s1, this.f938b);
        return interfaceC2988s1.mo323a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2908f
    /* renamed from: f */
    public AbstractC2908f mo371f(InterfaceC2727s interfaceC2727s) {
        return new C2811N1(this, interfaceC2727s);
    }

    @Override // p034j$.util.stream.AbstractC2908f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (!m405d()) {
            mo403g((InterfaceC2733A1) this.f804j.apply((InterfaceC2733A1) ((C2811N1) this.f940d).mo407b(), (InterfaceC2733A1) ((C2811N1) this.f941e).mo407b()));
        }
        this.f938b = null;
        this.f941e = null;
        this.f940d = null;
    }
}
