package p033j$.util.stream;
/* renamed from: j$.util.stream.q */
/* loaded from: classes2.dex */
class C3100q extends AbstractC3056i3 {

    /* renamed from: b */
    boolean f1107b;

    /* renamed from: c */
    Object f1108c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3100q(C3112s c3112s, InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        if (obj == null) {
            if (this.f1107b) {
                return;
            }
            this.f1107b = true;
            InterfaceC3080m3 interfaceC3080m3 = this.f1054a;
            this.f1108c = null;
            interfaceC3080m3.accept((InterfaceC3080m3) null);
            return;
        }
        Object obj2 = this.f1108c;
        if (obj2 == null || !obj.equals(obj2)) {
            InterfaceC3080m3 interfaceC3080m32 = this.f1054a;
            this.f1108c = obj;
            interfaceC3080m32.accept((InterfaceC3080m3) obj);
        }
    }

    @Override // p033j$.util.stream.AbstractC3056i3, p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public void mo339m() {
        this.f1107b = false;
        this.f1108c = null;
        this.f1054a.mo339m();
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f1107b = false;
        this.f1108c = null;
        this.f1054a.mo315n(-1L);
    }
}
