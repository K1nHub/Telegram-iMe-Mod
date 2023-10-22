package p033j$.util.stream;
/* renamed from: j$.util.stream.r3 */
/* loaded from: classes2.dex */
class C3102r3 extends AbstractC3036g3 {

    /* renamed from: b */
    long f1177b;

    /* renamed from: c */
    long f1178c;

    /* renamed from: d */
    final /* synthetic */ C3108s3 f1179d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3102r3(C3108s3 c3108s3, InterfaceC3072m3 interfaceC3072m3) {
        super(interfaceC3072m3);
        this.f1179d = c3108s3;
        this.f1177b = c3108s3.f1190l;
        long j = c3108s3.f1191m;
        this.f1178c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p033j$.util.stream.InterfaceC3060k3, p033j$.util.stream.InterfaceC3072m3
    public void accept(int i) {
        long j = this.f1177b;
        if (j != 0) {
            this.f1177b = j - 1;
            return;
        }
        long j2 = this.f1178c;
        if (j2 > 0) {
            this.f1178c = j2 - 1;
            this.f1092a.accept(i);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: m */
    public void mo360m(long j) {
        this.f1092a.mo360m(AbstractC2859B3.m581c(j, this.f1179d.f1190l, this.f1178c));
    }

    @Override // p033j$.util.stream.AbstractC3036g3, p033j$.util.stream.InterfaceC3072m3
    /* renamed from: o */
    public boolean mo359o() {
        return this.f1178c == 0 || this.f1092a.mo359o();
    }
}
