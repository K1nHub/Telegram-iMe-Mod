package p034j$.util.stream;
/* renamed from: j$.util.stream.q */
/* loaded from: classes2.dex */
class C2734q extends AbstractC2690i3 {

    /* renamed from: b */
    boolean f1013b;

    /* renamed from: c */
    Object f1014c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2734q(C2746s c2746s, InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        if (obj == null) {
            if (this.f1013b) {
                return;
            }
            this.f1013b = true;
            InterfaceC2714m3 interfaceC2714m3 = this.f960a;
            this.f1014c = null;
            interfaceC2714m3.accept((InterfaceC2714m3) null);
            return;
        }
        Object obj2 = this.f1014c;
        if (obj2 == null || !obj.equals(obj2)) {
            InterfaceC2714m3 interfaceC2714m32 = this.f960a;
            this.f1014c = obj;
            interfaceC2714m32.accept((InterfaceC2714m3) obj);
        }
    }

    @Override // p034j$.util.stream.AbstractC2690i3, p034j$.util.stream.InterfaceC2714m3
    /* renamed from: m */
    public void mo336m() {
        this.f1013b = false;
        this.f1014c = null;
        this.f960a.mo336m();
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        this.f1013b = false;
        this.f1014c = null;
        this.f960a.mo312n(-1L);
    }
}
