package p033j$.util.stream;
/* renamed from: j$.util.stream.x3 */
/* loaded from: classes2.dex */
class C3146x3 extends AbstractC3038f3 {

    /* renamed from: b */
    long f1172b;

    /* renamed from: c */
    long f1173c;

    /* renamed from: d */
    final /* synthetic */ C3152y3 f1174d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3146x3(C3152y3 c3152y3, InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
        this.f1174d = c3152y3;
        this.f1172b = c3152y3.f1178l;
        long j = c3152y3.f1179m;
        this.f1173c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p033j$.util.stream.InterfaceC3062j3, p033j$.util.stream.InterfaceC3080m3
    public void accept(double d) {
        long j = this.f1172b;
        if (j != 0) {
            this.f1172b = j - 1;
            return;
        }
        long j2 = this.f1173c;
        if (j2 > 0) {
            this.f1173c = j2 - 1;
            this.f1027a.accept(d);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo297n(long j) {
        this.f1027a.mo297n(AbstractC2867B3.m518c(j, this.f1174d.f1178l, this.f1173c));
    }

    @Override // p033j$.util.stream.AbstractC3038f3, p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public boolean mo296o() {
        return this.f1173c == 0 || this.f1027a.mo296o();
    }
}
