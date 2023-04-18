package p034j$.util.stream;
/* renamed from: j$.util.stream.r3 */
/* loaded from: classes2.dex */
class C2945r3 extends AbstractC2879g3 {

    /* renamed from: b */
    long f1039b;

    /* renamed from: c */
    long f1040c;

    /* renamed from: d */
    final /* synthetic */ C2951s3 f1041d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2945r3(C2951s3 c2951s3, InterfaceC2915m3 interfaceC2915m3) {
        super(interfaceC2915m3);
        this.f1041d = c2951s3;
        this.f1039b = c2951s3.f1052l;
        long j = c2951s3.f1053m;
        this.f1040c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p034j$.util.stream.InterfaceC2903k3, p034j$.util.stream.InterfaceC2915m3
    public void accept(int i) {
        long j = this.f1039b;
        if (j != 0) {
            this.f1039b = j - 1;
            return;
        }
        long j2 = this.f1040c;
        if (j2 > 0) {
            this.f1040c = j2 - 1;
            this.f954a.accept(i);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: n */
    public void mo292n(long j) {
        this.f954a.mo292n(AbstractC2702B3.m513c(j, this.f1041d.f1052l, this.f1040c));
    }

    @Override // p034j$.util.stream.AbstractC2879g3, p034j$.util.stream.InterfaceC2915m3
    /* renamed from: o */
    public boolean mo291o() {
        return this.f1040c == 0 || this.f954a.mo291o();
    }
}
