package p033j$.util.stream;
/* renamed from: j$.util.stream.o3 */
/* loaded from: classes2.dex */
class C3092o3 extends AbstractC3056i3 {

    /* renamed from: b */
    long f1097b;

    /* renamed from: c */
    long f1098c;

    /* renamed from: d */
    final /* synthetic */ C3098p3 f1099d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3092o3(C3098p3 c3098p3, InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
        this.f1099d = c3098p3;
        this.f1097b = c3098p3.f1103l;
        long j = c3098p3.f1104m;
        this.f1098c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        long j = this.f1097b;
        if (j != 0) {
            this.f1097b = j - 1;
            return;
        }
        long j2 = this.f1098c;
        if (j2 > 0) {
            this.f1098c = j2 - 1;
            this.f1054a.accept((InterfaceC3080m3) obj);
        }
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo315n(long j) {
        this.f1054a.mo315n(AbstractC2867B3.m536c(j, this.f1099d.f1103l, this.f1098c));
    }

    @Override // p033j$.util.stream.AbstractC3056i3, p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public boolean mo314o() {
        return this.f1098c == 0 || this.f1054a.mo314o();
    }
}
