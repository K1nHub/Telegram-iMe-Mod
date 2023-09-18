package p033j$.util.stream;
/* renamed from: j$.util.stream.q */
/* loaded from: classes2.dex */
class C3155q extends AbstractC3111i3 {

    /* renamed from: b */
    boolean f1108b;

    /* renamed from: c */
    Object f1109c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3155q(C3167s c3167s, InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        if (obj == null) {
            if (this.f1108b) {
                return;
            }
            this.f1108b = true;
            InterfaceC3135m3 interfaceC3135m3 = this.f1055a;
            this.f1109c = null;
            interfaceC3135m3.accept((InterfaceC3135m3) null);
            return;
        }
        Object obj2 = this.f1109c;
        if (obj2 == null || !obj.equals(obj2)) {
            InterfaceC3135m3 interfaceC3135m32 = this.f1055a;
            this.f1109c = obj;
            interfaceC3135m32.accept((InterfaceC3135m3) obj);
        }
    }

    @Override // p033j$.util.stream.AbstractC3111i3, p033j$.util.stream.InterfaceC3135m3
    /* renamed from: m */
    public void mo339m() {
        this.f1108b = false;
        this.f1109c = null;
        this.f1055a.mo339m();
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f1108b = false;
        this.f1109c = null;
        this.f1055a.mo315n(-1L);
    }
}
