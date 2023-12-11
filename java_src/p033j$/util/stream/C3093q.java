package p033j$.util.stream;
/* renamed from: j$.util.stream.q */
/* loaded from: classes2.dex */
class C3093q extends AbstractC3049i3 {

    /* renamed from: b */
    boolean f1157b;

    /* renamed from: c */
    Object f1158c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3093q(C3105s c3105s, InterfaceC3073m3 interfaceC3073m3) {
        super(interfaceC3073m3);
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        if (obj == null) {
            if (this.f1157b) {
                return;
            }
            this.f1157b = true;
            InterfaceC3073m3 interfaceC3073m3 = this.f1104a;
            this.f1158c = null;
            interfaceC3073m3.accept((InterfaceC3073m3) null);
            return;
        }
        Object obj2 = this.f1158c;
        if (obj2 == null || !obj.equals(obj2)) {
            InterfaceC3073m3 interfaceC3073m32 = this.f1104a;
            this.f1158c = obj;
            interfaceC3073m32.accept((InterfaceC3073m3) obj);
        }
    }

    @Override // p033j$.util.stream.AbstractC3049i3, p033j$.util.stream.InterfaceC3073m3
    /* renamed from: l */
    public void mo385l() {
        this.f1157b = false;
        this.f1158c = null;
        this.f1104a.mo385l();
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: m */
    public void mo361m(long j) {
        this.f1157b = false;
        this.f1158c = null;
        this.f1104a.mo361m(-1L);
    }
}
