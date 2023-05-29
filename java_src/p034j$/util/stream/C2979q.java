package p034j$.util.stream;
/* renamed from: j$.util.stream.q */
/* loaded from: classes2.dex */
class C2979q extends AbstractC2935i3 {

    /* renamed from: b */
    boolean f1022b;

    /* renamed from: c */
    Object f1023c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2979q(C2991s c2991s, InterfaceC2959m3 interfaceC2959m3) {
        super(interfaceC2959m3);
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        if (obj == null) {
            if (this.f1022b) {
                return;
            }
            this.f1022b = true;
            InterfaceC2959m3 interfaceC2959m3 = this.f969a;
            this.f1023c = null;
            interfaceC2959m3.accept((InterfaceC2959m3) null);
            return;
        }
        Object obj2 = this.f1023c;
        if (obj2 == null || !obj.equals(obj2)) {
            InterfaceC2959m3 interfaceC2959m32 = this.f969a;
            this.f1023c = obj;
            interfaceC2959m32.accept((InterfaceC2959m3) obj);
        }
    }

    @Override // p034j$.util.stream.AbstractC2935i3, p034j$.util.stream.InterfaceC2959m3
    /* renamed from: m */
    public void mo321m() {
        this.f1022b = false;
        this.f1023c = null;
        this.f969a.mo321m();
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: n */
    public void mo297n(long j) {
        this.f1022b = false;
        this.f1023c = null;
        this.f969a.mo297n(-1L);
    }
}
