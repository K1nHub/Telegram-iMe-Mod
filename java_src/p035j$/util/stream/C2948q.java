package p035j$.util.stream;
/* renamed from: j$.util.stream.q */
/* loaded from: classes2.dex */
class C2948q extends AbstractC2904i3 {

    /* renamed from: b */
    boolean f1024b;

    /* renamed from: c */
    Object f1025c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2948q(C2960s c2960s, InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
    }

    @Override // p035j$.util.function.Consumer
    public void accept(Object obj) {
        if (obj == null) {
            if (this.f1024b) {
                return;
            }
            this.f1024b = true;
            InterfaceC2928m3 interfaceC2928m3 = this.f971a;
            this.f1025c = null;
            interfaceC2928m3.accept((InterfaceC2928m3) null);
            return;
        }
        Object obj2 = this.f1025c;
        if (obj2 == null || !obj.equals(obj2)) {
            InterfaceC2928m3 interfaceC2928m32 = this.f971a;
            this.f1025c = obj;
            interfaceC2928m32.accept((InterfaceC2928m3) obj);
        }
    }

    @Override // p035j$.util.stream.AbstractC2904i3, p035j$.util.stream.InterfaceC2928m3
    /* renamed from: m */
    public void mo330m() {
        this.f1024b = false;
        this.f1025c = null;
        this.f971a.mo330m();
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public void mo306n(long j) {
        this.f1024b = false;
        this.f1025c = null;
        this.f971a.mo306n(-1L);
    }
}
