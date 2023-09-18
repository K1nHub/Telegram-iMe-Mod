package p033j$.util.stream;
/* renamed from: j$.util.stream.o3 */
/* loaded from: classes2.dex */
class C3147o3 extends AbstractC3111i3 {

    /* renamed from: b */
    long f1098b;

    /* renamed from: c */
    long f1099c;

    /* renamed from: d */
    final /* synthetic */ C3153p3 f1100d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3147o3(C3153p3 c3153p3, InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
        this.f1100d = c3153p3;
        this.f1098b = c3153p3.f1104l;
        long j = c3153p3.f1105m;
        this.f1099c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        long j = this.f1098b;
        if (j != 0) {
            this.f1098b = j - 1;
            return;
        }
        long j2 = this.f1099c;
        if (j2 > 0) {
            this.f1099c = j2 - 1;
            this.f1055a.accept((InterfaceC3135m3) obj);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f1055a.mo315n(AbstractC2922B3.m536c(j, this.f1100d.f1104l, this.f1099c));
    }

    @Override // p033j$.util.stream.AbstractC3111i3, p033j$.util.stream.InterfaceC3135m3
    /* renamed from: o */
    public boolean mo314o() {
        return this.f1099c == 0 || this.f1055a.mo314o();
    }
}
