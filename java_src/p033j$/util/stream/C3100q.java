package p033j$.util.stream;
/* renamed from: j$.util.stream.q */
/* loaded from: classes2.dex */
class C3100q extends AbstractC3056i3 {

    /* renamed from: b */
    boolean f1104b;

    /* renamed from: c */
    Object f1105c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3100q(C3112s c3112s, InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        if (obj == null) {
            if (this.f1104b) {
                return;
            }
            this.f1104b = true;
            InterfaceC3080m3 interfaceC3080m3 = this.f1051a;
            this.f1105c = null;
            interfaceC3080m3.accept((InterfaceC3080m3) null);
            return;
        }
        Object obj2 = this.f1105c;
        if (obj2 == null || !obj.equals(obj2)) {
            InterfaceC3080m3 interfaceC3080m32 = this.f1051a;
            this.f1105c = obj;
            interfaceC3080m32.accept((InterfaceC3080m3) obj);
        }
    }

    @Override // p033j$.util.stream.AbstractC3056i3, p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public void mo321m() {
        this.f1104b = false;
        this.f1105c = null;
        this.f1051a.mo321m();
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo297n(long j) {
        this.f1104b = false;
        this.f1105c = null;
        this.f1051a.mo297n(-1L);
    }
}
