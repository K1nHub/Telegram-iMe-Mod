package p034j$.util.stream;
/* renamed from: j$.util.stream.q */
/* loaded from: classes2.dex */
class C2858q extends AbstractC2814i3 {

    /* renamed from: b */
    boolean f1018b;

    /* renamed from: c */
    Object f1019c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2858q(C2870s c2870s, InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        if (obj == null) {
            if (this.f1018b) {
                return;
            }
            this.f1018b = true;
            InterfaceC2838m3 interfaceC2838m3 = this.f965a;
            this.f1019c = null;
            interfaceC2838m3.accept((InterfaceC2838m3) null);
            return;
        }
        Object obj2 = this.f1019c;
        if (obj2 == null || !obj.equals(obj2)) {
            InterfaceC2838m3 interfaceC2838m32 = this.f965a;
            this.f1019c = obj;
            interfaceC2838m32.accept((InterfaceC2838m3) obj);
        }
    }

    @Override // p034j$.util.stream.AbstractC2814i3, p034j$.util.stream.InterfaceC2838m3
    /* renamed from: m */
    public void mo336m() {
        this.f1018b = false;
        this.f1019c = null;
        this.f965a.mo336m();
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: n */
    public void mo312n(long j) {
        this.f1018b = false;
        this.f1019c = null;
        this.f965a.mo312n(-1L);
    }
}
