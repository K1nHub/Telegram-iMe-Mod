package p035j$.util.stream;
/* renamed from: j$.util.stream.r3 */
/* loaded from: classes2.dex */
class C2958r3 extends AbstractC2892g3 {

    /* renamed from: b */
    long f1044b;

    /* renamed from: c */
    long f1045c;

    /* renamed from: d */
    final /* synthetic */ C2964s3 f1046d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2958r3(C2964s3 c2964s3, InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
        this.f1046d = c2964s3;
        this.f1044b = c2964s3.f1057l;
        long j = c2964s3.f1058m;
        this.f1045c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p035j$.util.stream.InterfaceC2916k3, p035j$.util.stream.InterfaceC2928m3
    public void accept(int i) {
        long j = this.f1044b;
        if (j != 0) {
            this.f1044b = j - 1;
            return;
        }
        long j2 = this.f1045c;
        if (j2 > 0) {
            this.f1045c = j2 - 1;
            this.f959a.accept(i);
        }
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public void mo306n(long j) {
        this.f959a.mo306n(AbstractC2715B3.m527c(j, this.f1046d.f1057l, this.f1045c));
    }

    @Override // p035j$.util.stream.AbstractC2892g3, p035j$.util.stream.InterfaceC2928m3
    /* renamed from: o */
    public boolean mo305o() {
        return this.f1045c == 0 || this.f959a.mo305o();
    }
}
