package p033j$.util.stream;
/* renamed from: j$.util.stream.q */
/* loaded from: classes2.dex */
class C3239q extends AbstractC3195i3 {

    /* renamed from: b */
    boolean f1117b;

    /* renamed from: c */
    Object f1118c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3239q(C3251s c3251s, InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        if (obj == null) {
            if (this.f1117b) {
                return;
            }
            this.f1117b = true;
            InterfaceC3219m3 interfaceC3219m3 = this.f1064a;
            this.f1118c = null;
            interfaceC3219m3.accept((InterfaceC3219m3) null);
            return;
        }
        Object obj2 = this.f1118c;
        if (obj2 == null || !obj.equals(obj2)) {
            InterfaceC3219m3 interfaceC3219m32 = this.f1064a;
            this.f1118c = obj;
            interfaceC3219m32.accept((InterfaceC3219m3) obj);
        }
    }

    @Override // p033j$.util.stream.AbstractC3195i3, p033j$.util.stream.InterfaceC3219m3
    /* renamed from: m */
    public void mo339m() {
        this.f1117b = false;
        this.f1118c = null;
        this.f1064a.mo339m();
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f1117b = false;
        this.f1118c = null;
        this.f1064a.mo315n(-1L);
    }
}
