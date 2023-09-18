package p033j$.util.stream;
/* renamed from: j$.util.stream.r3 */
/* loaded from: classes2.dex */
class C3165r3 extends AbstractC3099g3 {

    /* renamed from: b */
    long f1128b;

    /* renamed from: c */
    long f1129c;

    /* renamed from: d */
    final /* synthetic */ C3171s3 f1130d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3165r3(C3171s3 c3171s3, InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
        this.f1130d = c3171s3;
        this.f1128b = c3171s3.f1141l;
        long j = c3171s3.f1142m;
        this.f1129c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p033j$.util.stream.InterfaceC3123k3, p033j$.util.stream.InterfaceC3135m3
    public void accept(int i) {
        long j = this.f1128b;
        if (j != 0) {
            this.f1128b = j - 1;
            return;
        }
        long j2 = this.f1129c;
        if (j2 > 0) {
            this.f1129c = j2 - 1;
            this.f1043a.accept(i);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f1043a.mo315n(AbstractC2922B3.m536c(j, this.f1130d.f1141l, this.f1129c));
    }

    @Override // p033j$.util.stream.AbstractC3099g3, p033j$.util.stream.InterfaceC3135m3
    /* renamed from: o */
    public boolean mo314o() {
        return this.f1129c == 0 || this.f1043a.mo314o();
    }
}
