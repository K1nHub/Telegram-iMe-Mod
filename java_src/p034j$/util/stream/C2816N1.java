package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.InterfaceC2695b;
import p034j$.util.function.InterfaceC2711r;
/* renamed from: j$.util.stream.N1 */
/* loaded from: classes2.dex */
class C2816N1 extends AbstractC2913f {

    /* renamed from: h */
    protected final AbstractC3030y2 f802h;

    /* renamed from: i */
    protected final InterfaceC2711r f803i;

    /* renamed from: j */
    protected final InterfaceC2695b f804j;

    C2816N1(C2816N1 c2816n1, InterfaceC2732s interfaceC2732s) {
        super(c2816n1, interfaceC2732s);
        this.f802h = c2816n1.f802h;
        this.f803i = c2816n1.f803i;
        this.f804j = c2816n1.f804j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2816N1(AbstractC3030y2 abstractC3030y2, InterfaceC2732s interfaceC2732s, InterfaceC2711r interfaceC2711r, InterfaceC2695b interfaceC2695b) {
        super(abstractC3030y2, interfaceC2732s);
        this.f802h = abstractC3030y2;
        this.f803i = interfaceC2711r;
        this.f804j = interfaceC2695b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2913f
    /* renamed from: a */
    public Object mo372a() {
        InterfaceC2993s1 interfaceC2993s1 = (InterfaceC2993s1) this.f803i.apply(this.f802h.mo292q0(this.f938b));
        this.f802h.mo288u0(interfaceC2993s1, this.f938b);
        return interfaceC2993s1.mo323a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2913f
    /* renamed from: f */
    public AbstractC2913f mo371f(InterfaceC2732s interfaceC2732s) {
        return new C2816N1(this, interfaceC2732s);
    }

    @Override // p034j$.util.stream.AbstractC2913f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (!m405d()) {
            mo403g((InterfaceC2738A1) this.f804j.apply((InterfaceC2738A1) ((C2816N1) this.f940d).mo407b(), (InterfaceC2738A1) ((C2816N1) this.f941e).mo407b()));
        }
        this.f938b = null;
        this.f941e = null;
        this.f940d = null;
    }
}
