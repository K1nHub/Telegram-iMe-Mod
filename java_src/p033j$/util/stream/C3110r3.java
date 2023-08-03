package p033j$.util.stream;
/* renamed from: j$.util.stream.r3 */
/* loaded from: classes2.dex */
class C3110r3 extends AbstractC3044g3 {

    /* renamed from: b */
    long f1127b;

    /* renamed from: c */
    long f1128c;

    /* renamed from: d */
    final /* synthetic */ C3116s3 f1129d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3110r3(C3116s3 c3116s3, InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
        this.f1129d = c3116s3;
        this.f1127b = c3116s3.f1140l;
        long j = c3116s3.f1141m;
        this.f1128c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p033j$.util.stream.InterfaceC3068k3, p033j$.util.stream.InterfaceC3080m3
    public void accept(int i) {
        long j = this.f1127b;
        if (j != 0) {
            this.f1127b = j - 1;
            return;
        }
        long j2 = this.f1128c;
        if (j2 > 0) {
            this.f1128c = j2 - 1;
            this.f1042a.accept(i);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f1042a.mo315n(AbstractC2867B3.m536c(j, this.f1129d.f1140l, this.f1128c));
    }

    @Override // p033j$.util.stream.AbstractC3044g3, p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public boolean mo314o() {
        return this.f1128c == 0 || this.f1042a.mo314o();
    }
}
