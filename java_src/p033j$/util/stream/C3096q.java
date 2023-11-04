package p033j$.util.stream;
/* renamed from: j$.util.stream.q */
/* loaded from: classes2.dex */
class C3096q extends AbstractC3052i3 {

    /* renamed from: b */
    boolean f1157b;

    /* renamed from: c */
    Object f1158c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3096q(C3108s c3108s, InterfaceC3076m3 interfaceC3076m3) {
        super(interfaceC3076m3);
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        if (obj == null) {
            if (this.f1157b) {
                return;
            }
            this.f1157b = true;
            InterfaceC3076m3 interfaceC3076m3 = this.f1104a;
            this.f1158c = null;
            interfaceC3076m3.accept((InterfaceC3076m3) null);
            return;
        }
        Object obj2 = this.f1158c;
        if (obj2 == null || !obj.equals(obj2)) {
            InterfaceC3076m3 interfaceC3076m32 = this.f1104a;
            this.f1158c = obj;
            interfaceC3076m32.accept((InterfaceC3076m3) obj);
        }
    }

    @Override // p033j$.util.stream.AbstractC3052i3, p033j$.util.stream.InterfaceC3076m3
    /* renamed from: l */
    public void mo385l() {
        this.f1157b = false;
        this.f1158c = null;
        this.f1104a.mo385l();
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: m */
    public void mo361m(long j) {
        this.f1157b = false;
        this.f1158c = null;
        this.f1104a.mo361m(-1L);
    }
}
