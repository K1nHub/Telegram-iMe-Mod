package p035j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.InterfaceC2664b;
import p035j$.util.function.InterfaceC2680r;
/* renamed from: j$.util.stream.N1 */
/* loaded from: classes2.dex */
class C2785N1 extends AbstractC2882f {

    /* renamed from: h */
    protected final AbstractC2999y2 f804h;

    /* renamed from: i */
    protected final InterfaceC2680r f805i;

    /* renamed from: j */
    protected final InterfaceC2664b f806j;

    C2785N1(C2785N1 c2785n1, InterfaceC2701s interfaceC2701s) {
        super(c2785n1, interfaceC2701s);
        this.f804h = c2785n1.f804h;
        this.f805i = c2785n1.f805i;
        this.f806j = c2785n1.f806j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2785N1(AbstractC2999y2 abstractC2999y2, InterfaceC2701s interfaceC2701s, InterfaceC2680r interfaceC2680r, InterfaceC2664b interfaceC2664b) {
        super(abstractC2999y2, interfaceC2701s);
        this.f804h = abstractC2999y2;
        this.f805i = interfaceC2680r;
        this.f806j = interfaceC2664b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p035j$.util.stream.AbstractC2882f
    /* renamed from: a */
    public Object mo381a() {
        InterfaceC2962s1 interfaceC2962s1 = (InterfaceC2962s1) this.f805i.apply(this.f804h.mo301q0(this.f940b));
        this.f804h.mo297u0(interfaceC2962s1, this.f940b);
        return interfaceC2962s1.mo332a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p035j$.util.stream.AbstractC2882f
    /* renamed from: f */
    public AbstractC2882f mo380f(InterfaceC2701s interfaceC2701s) {
        return new C2785N1(this, interfaceC2701s);
    }

    @Override // p035j$.util.stream.AbstractC2882f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (!m414d()) {
            mo412g((InterfaceC2707A1) this.f806j.apply((InterfaceC2707A1) ((C2785N1) this.f942d).mo416b(), (InterfaceC2707A1) ((C2785N1) this.f943e).mo416b()));
        }
        this.f940b = null;
        this.f943e = null;
        this.f942d = null;
    }
}
