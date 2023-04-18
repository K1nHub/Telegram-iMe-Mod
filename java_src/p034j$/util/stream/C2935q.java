package p034j$.util.stream;
/* renamed from: j$.util.stream.q */
/* loaded from: classes2.dex */
class C2935q extends AbstractC2891i3 {

    /* renamed from: b */
    boolean f1019b;

    /* renamed from: c */
    Object f1020c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2935q(C2947s c2947s, InterfaceC2915m3 interfaceC2915m3) {
        super(interfaceC2915m3);
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        if (obj == null) {
            if (this.f1019b) {
                return;
            }
            this.f1019b = true;
            InterfaceC2915m3 interfaceC2915m3 = this.f966a;
            this.f1020c = null;
            interfaceC2915m3.accept((InterfaceC2915m3) null);
            return;
        }
        Object obj2 = this.f1020c;
        if (obj2 == null || !obj.equals(obj2)) {
            InterfaceC2915m3 interfaceC2915m32 = this.f966a;
            this.f1020c = obj;
            interfaceC2915m32.accept((InterfaceC2915m3) obj);
        }
    }

    @Override // p034j$.util.stream.AbstractC2891i3, p034j$.util.stream.InterfaceC2915m3
    /* renamed from: m */
    public void mo316m() {
        this.f1019b = false;
        this.f1020c = null;
        this.f966a.mo316m();
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: n */
    public void mo292n(long j) {
        this.f1019b = false;
        this.f1020c = null;
        this.f966a.mo292n(-1L);
    }
}
