package p034j$.util.stream;

import java.util.concurrent.CountedCompleter;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.InterfaceC2588b;
import p034j$.util.function.InterfaceC2604r;
/* renamed from: j$.util.stream.N1 */
/* loaded from: classes2.dex */
class C2709N1 extends AbstractC2806f {

    /* renamed from: h */
    protected final AbstractC2923y2 f799h;

    /* renamed from: i */
    protected final InterfaceC2604r f800i;

    /* renamed from: j */
    protected final InterfaceC2588b f801j;

    C2709N1(C2709N1 c2709n1, InterfaceC2625s interfaceC2625s) {
        super(c2709n1, interfaceC2625s);
        this.f799h = c2709n1.f799h;
        this.f800i = c2709n1.f800i;
        this.f801j = c2709n1.f801j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2709N1(AbstractC2923y2 abstractC2923y2, InterfaceC2625s interfaceC2625s, InterfaceC2604r interfaceC2604r, InterfaceC2588b interfaceC2588b) {
        super(abstractC2923y2, interfaceC2625s);
        this.f799h = abstractC2923y2;
        this.f800i = interfaceC2604r;
        this.f801j = interfaceC2588b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2806f
    /* renamed from: a */
    public Object mo386a() {
        InterfaceC2886s1 interfaceC2886s1 = (InterfaceC2886s1) this.f800i.apply(this.f799h.mo306q0(this.f935b));
        this.f799h.mo302u0(interfaceC2886s1, this.f935b);
        return interfaceC2886s1.mo337a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p034j$.util.stream.AbstractC2806f
    /* renamed from: f */
    public AbstractC2806f mo385f(InterfaceC2625s interfaceC2625s) {
        return new C2709N1(this, interfaceC2625s);
    }

    @Override // p034j$.util.stream.AbstractC2806f, java.util.concurrent.CountedCompleter
    public void onCompletion(CountedCompleter countedCompleter) {
        if (!m419d()) {
            mo417g((InterfaceC2631A1) this.f801j.apply((InterfaceC2631A1) ((C2709N1) this.f937d).mo421b(), (InterfaceC2631A1) ((C2709N1) this.f938e).mo421b()));
        }
        this.f935b = null;
        this.f938e = null;
        this.f937d = null;
    }
}
