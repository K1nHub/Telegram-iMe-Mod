package p033j$.util.stream;
/* renamed from: j$.util.stream.r3 */
/* loaded from: classes2.dex */
class C3101r3 extends AbstractC3035g3 {

    /* renamed from: b */
    long f1177b;

    /* renamed from: c */
    long f1178c;

    /* renamed from: d */
    final /* synthetic */ C3107s3 f1179d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3101r3(C3107s3 c3107s3, InterfaceC3071m3 interfaceC3071m3) {
        super(interfaceC3071m3);
        this.f1179d = c3107s3;
        this.f1177b = c3107s3.f1190l;
        long j = c3107s3.f1191m;
        this.f1178c = j < 0 ? Long.MAX_VALUE : j;
    }

    @Override // p033j$.util.stream.InterfaceC3059k3, p033j$.util.stream.InterfaceC3071m3
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

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: m */
    public void mo364m(long j) {
        this.f1092a.mo364m(AbstractC2858B3.m585c(j, this.f1179d.f1190l, this.f1178c));
    }

    @Override // p033j$.util.stream.AbstractC3035g3, p033j$.util.stream.InterfaceC3071m3
    /* renamed from: o */
    public boolean mo363o() {
        return this.f1178c == 0 || this.f1092a.mo363o();
    }
}
