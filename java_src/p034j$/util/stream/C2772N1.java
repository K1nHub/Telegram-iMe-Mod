package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.InterfaceC2651b;
import p034j$.util.function.InterfaceC2667r;
/* renamed from: j$.util.stream.N1 */
/* loaded from: classes2.dex */
class C2772N1 extends AbstractC2869f {

    /* renamed from: h */
    protected final AbstractC2986y2 f799h;

    /* renamed from: i */
    protected final InterfaceC2667r f800i;

    /* renamed from: j */
    protected final InterfaceC2651b f801j;

    C2772N1(C2772N1 c2772n1, InterfaceC2688s interfaceC2688s) {
        super(c2772n1, interfaceC2688s);
        this.f799h = c2772n1.f799h;
        this.f800i = c2772n1.f800i;
        this.f801j = c2772n1.f801j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2772N1(AbstractC2986y2 abstractC2986y2, InterfaceC2688s interfaceC2688s, InterfaceC2667r interfaceC2667r, InterfaceC2651b interfaceC2651b) {
        super(abstractC2986y2, interfaceC2688s);
        this.f799h = abstractC2986y2;
        this.f800i = interfaceC2667r;
        this.f801j = interfaceC2651b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2869f
    /* renamed from: a */
    public Object mo367a() {
        InterfaceC2949s1 interfaceC2949s1 = (InterfaceC2949s1) this.f800i.apply(this.f799h.mo287q0(this.f935b));
        this.f799h.mo283u0(interfaceC2949s1, this.f935b);
        return interfaceC2949s1.mo318a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2869f
    /* renamed from: f */
    public AbstractC2869f mo366f(InterfaceC2688s interfaceC2688s) {
        return new C2772N1(this, interfaceC2688s);
    }

    @Override // p034j$.util.stream.AbstractC2869f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (!m400d()) {
            mo398g((InterfaceC2694A1) this.f801j.apply((InterfaceC2694A1) ((C2772N1) this.f937d).mo402b(), (InterfaceC2694A1) ((C2772N1) this.f938e).mo402b()));
        }
        this.f935b = null;
        this.f938e = null;
        this.f937d = null;
    }
}
