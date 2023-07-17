package p033j$.util.stream;
/* renamed from: j$.util.stream.o3 */
/* loaded from: classes2.dex */
class C3092o3 extends AbstractC3056i3 {

    /* renamed from: b */
    long f1094b;

    /* renamed from: c */
    long f1095c;

    /* renamed from: d */
    final /* synthetic */ C3098p3 f1096d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3092o3(C3098p3 c3098p3, InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
        this.f1096d = c3098p3;
        this.f1094b = c3098p3.f1100l;
        long j = c3098p3.f1101m;
        this.f1095c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        long j = this.f1094b;
        if (j != 0) {
            this.f1094b = j - 1;
            return;
        }
        long j2 = this.f1095c;
        if (j2 > 0) {
            this.f1095c = j2 - 1;
            this.f1051a.accept((InterfaceC3080m3) obj);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo297n(long j) {
        this.f1051a.mo297n(AbstractC2867B3.m518c(j, this.f1096d.f1100l, this.f1095c));
    }

    @Override // p033j$.util.stream.AbstractC3056i3, p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public boolean mo296o() {
        return this.f1095c == 0 || this.f1051a.mo296o();
    }
}
