package p033j$.util.stream;
/* renamed from: j$.util.stream.q */
/* loaded from: classes2.dex */
class C3091q extends AbstractC3047i3 {

    /* renamed from: b */
    boolean f1157b;

    /* renamed from: c */
    Object f1158c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3091q(C3103s c3103s, InterfaceC3071m3 interfaceC3071m3) {
        super(interfaceC3071m3);
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        if (obj == null) {
            if (this.f1157b) {
                return;
            }
            this.f1157b = true;
            InterfaceC3071m3 interfaceC3071m3 = this.f1104a;
            this.f1158c = null;
            interfaceC3071m3.accept((InterfaceC3071m3) null);
            return;
        }
        Object obj2 = this.f1158c;
        if (obj2 == null || !obj.equals(obj2)) {
            InterfaceC3071m3 interfaceC3071m32 = this.f1104a;
            this.f1158c = obj;
            interfaceC3071m32.accept((InterfaceC3071m3) obj);
        }
    }

    @Override // p033j$.util.stream.AbstractC3047i3, p033j$.util.stream.InterfaceC3071m3
    /* renamed from: l */
    public void mo388l() {
        this.f1157b = false;
        this.f1158c = null;
        this.f1104a.mo388l();
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: m */
    public void mo364m(long j) {
        this.f1157b = false;
        this.f1158c = null;
        this.f1104a.mo364m(-1L);
    }
}
