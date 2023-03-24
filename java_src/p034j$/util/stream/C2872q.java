package p034j$.util.stream;
/* renamed from: j$.util.stream.q */
/* loaded from: classes2.dex */
class C2872q extends AbstractC2828i3 {

    /* renamed from: b */
    boolean f1019b;

    /* renamed from: c */
    Object f1020c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2872q(C2884s c2884s, InterfaceC2852m3 interfaceC2852m3) {
        super(interfaceC2852m3);
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        if (obj == null) {
            if (this.f1019b) {
                return;
            }
            this.f1019b = true;
            InterfaceC2852m3 interfaceC2852m3 = this.f966a;
            this.f1020c = null;
            interfaceC2852m3.accept((InterfaceC2852m3) null);
            return;
        }
        Object obj2 = this.f1020c;
        if (obj2 == null || !obj.equals(obj2)) {
            InterfaceC2852m3 interfaceC2852m32 = this.f966a;
            this.f1020c = obj;
            interfaceC2852m32.accept((InterfaceC2852m3) obj);
        }
    }

    @Override // p034j$.util.stream.AbstractC2828i3, p034j$.util.stream.InterfaceC2852m3
    /* renamed from: m */
    public void mo335m() {
        this.f1019b = false;
        this.f1020c = null;
        this.f966a.mo335m();
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public void mo311n(long j) {
        this.f1019b = false;
        this.f1020c = null;
        this.f966a.mo311n(-1L);
    }
}
