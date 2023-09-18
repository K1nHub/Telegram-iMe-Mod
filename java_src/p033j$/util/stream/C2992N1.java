package p033j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.InterfaceC2871b;
import p033j$.util.function.InterfaceC2887r;
/* renamed from: j$.util.stream.N1 */
/* loaded from: classes2.dex */
class C2992N1 extends AbstractC3089f {

    /* renamed from: h */
    protected final AbstractC3206y2 f888h;

    /* renamed from: i */
    protected final InterfaceC2887r f889i;

    /* renamed from: j */
    protected final InterfaceC2871b f890j;

    C2992N1(C2992N1 c2992n1, InterfaceC2908s interfaceC2908s) {
        super(c2992n1, interfaceC2908s);
        this.f888h = c2992n1.f888h;
        this.f889i = c2992n1.f889i;
        this.f890j = c2992n1.f890j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2992N1(AbstractC3206y2 abstractC3206y2, InterfaceC2908s interfaceC2908s, InterfaceC2887r interfaceC2887r, InterfaceC2871b interfaceC2871b) {
        super(abstractC3206y2, interfaceC2908s);
        this.f888h = abstractC3206y2;
        this.f889i = interfaceC2887r;
        this.f890j = interfaceC2871b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3089f
    /* renamed from: a */
    public Object mo390a() {
        InterfaceC3169s1 interfaceC3169s1 = (InterfaceC3169s1) this.f889i.apply(this.f888h.mo310q0(this.f1024b));
        this.f888h.mo306u0(interfaceC3169s1, this.f1024b);
        return interfaceC3169s1.mo341a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p033j$.util.stream.AbstractC3089f
    /* renamed from: f */
    public AbstractC3089f mo389f(InterfaceC2908s interfaceC2908s) {
        return new C2992N1(this, interfaceC2908s);
    }

    @Override // p033j$.util.stream.AbstractC3089f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (!m423d()) {
            mo421g((InterfaceC2914A1) this.f890j.apply((InterfaceC2914A1) ((C2992N1) this.f1026d).mo425b(), (InterfaceC2914A1) ((C2992N1) this.f1027e).mo425b()));
        }
        this.f1024b = null;
        this.f1027e = null;
        this.f1026d = null;
    }
}
