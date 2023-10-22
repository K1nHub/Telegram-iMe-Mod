package p033j$.util.stream;
/* renamed from: j$.util.stream.q */
/* loaded from: classes2.dex */
class C3092q extends AbstractC3048i3 {

    /* renamed from: b */
    boolean f1157b;

    /* renamed from: c */
    Object f1158c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3092q(C3104s c3104s, InterfaceC3072m3 interfaceC3072m3) {
        super(interfaceC3072m3);
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        if (obj == null) {
            if (this.f1157b) {
                return;
            }
            this.f1157b = true;
            InterfaceC3072m3 interfaceC3072m3 = this.f1104a;
            this.f1158c = null;
            interfaceC3072m3.accept((InterfaceC3072m3) null);
            return;
        }
        Object obj2 = this.f1158c;
        if (obj2 == null || !obj.equals(obj2)) {
            InterfaceC3072m3 interfaceC3072m32 = this.f1104a;
            this.f1158c = obj;
            interfaceC3072m32.accept((InterfaceC3072m3) obj);
        }
    }

    @Override // p033j$.util.stream.AbstractC3048i3, p033j$.util.stream.InterfaceC3072m3
    /* renamed from: l */
    public void mo384l() {
        this.f1157b = false;
        this.f1158c = null;
        this.f1104a.mo384l();
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: m */
    public void mo360m(long j) {
        this.f1157b = false;
        this.f1158c = null;
        this.f1104a.mo360m(-1L);
    }
}
