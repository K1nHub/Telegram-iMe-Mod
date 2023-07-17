package p033j$.util.stream;
/* renamed from: j$.util.stream.r3 */
/* loaded from: classes2.dex */
class C3110r3 extends AbstractC3044g3 {

    /* renamed from: b */
    long f1124b;

    /* renamed from: c */
    long f1125c;

    /* renamed from: d */
    final /* synthetic */ C3116s3 f1126d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3110r3(C3116s3 c3116s3, InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
        this.f1126d = c3116s3;
        this.f1124b = c3116s3.f1137l;
        long j = c3116s3.f1138m;
        this.f1125c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p033j$.util.stream.InterfaceC3068k3, p033j$.util.stream.InterfaceC3080m3
    public void accept(int i) {
        long j = this.f1124b;
        if (j != 0) {
            this.f1124b = j - 1;
            return;
        }
        long j2 = this.f1125c;
        if (j2 > 0) {
            this.f1125c = j2 - 1;
            this.f1039a.accept(i);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo297n(long j) {
        this.f1039a.mo297n(AbstractC2867B3.m518c(j, this.f1126d.f1137l, this.f1125c));
    }

    @Override // p033j$.util.stream.AbstractC3044g3, p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public boolean mo296o() {
        return this.f1125c == 0 || this.f1039a.mo296o();
    }
}
