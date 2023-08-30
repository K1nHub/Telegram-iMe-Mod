package p033j$.util.stream;
/* renamed from: j$.util.stream.r3 */
/* loaded from: classes2.dex */
class C3249r3 extends AbstractC3183g3 {

    /* renamed from: b */
    long f1137b;

    /* renamed from: c */
    long f1138c;

    /* renamed from: d */
    final /* synthetic */ C3255s3 f1139d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3249r3(C3255s3 c3255s3, InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
        this.f1139d = c3255s3;
        this.f1137b = c3255s3.f1150l;
        long j = c3255s3.f1151m;
        this.f1138c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p033j$.util.stream.InterfaceC3207k3, p033j$.util.stream.InterfaceC3219m3
    public void accept(int i) {
        long j = this.f1137b;
        if (j != 0) {
            this.f1137b = j - 1;
            return;
        }
        long j2 = this.f1138c;
        if (j2 > 0) {
            this.f1138c = j2 - 1;
            this.f1052a.accept(i);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f1052a.mo315n(AbstractC3006B3.m536c(j, this.f1139d.f1150l, this.f1138c));
    }

    @Override // p033j$.util.stream.AbstractC3183g3, p033j$.util.stream.InterfaceC3219m3
    /* renamed from: o */
    public boolean mo314o() {
        return this.f1138c == 0 || this.f1052a.mo314o();
    }
}
