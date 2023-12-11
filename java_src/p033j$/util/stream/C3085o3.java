package p033j$.util.stream;
/* renamed from: j$.util.stream.o3 */
/* loaded from: classes2.dex */
class C3085o3 extends AbstractC3049i3 {

    /* renamed from: b */
    long f1147b;

    /* renamed from: c */
    long f1148c;

    /* renamed from: d */
    final /* synthetic */ C3091p3 f1149d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3085o3(C3091p3 c3091p3, InterfaceC3073m3 interfaceC3073m3) {
        super(interfaceC3073m3);
        this.f1149d = c3091p3;
        this.f1147b = c3091p3.f1153l;
        long j = c3091p3.f1154m;
        this.f1148c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        long j = this.f1147b;
        if (j != 0) {
            this.f1147b = j - 1;
            return;
        }
        long j2 = this.f1148c;
        if (j2 > 0) {
            this.f1148c = j2 - 1;
            this.f1104a.accept((InterfaceC3073m3) obj);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: m */
    public void mo361m(long j) {
        this.f1104a.mo361m(AbstractC2860B3.m582c(j, this.f1149d.f1153l, this.f1148c));
    }

    @Override // p033j$.util.stream.AbstractC3049i3, p033j$.util.stream.InterfaceC3073m3
    /* renamed from: o */
    public boolean mo360o() {
        return this.f1148c == 0 || this.f1104a.mo360o();
    }
}
