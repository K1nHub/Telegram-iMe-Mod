package p033j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.I3 */
/* loaded from: classes2.dex */
final class C2902I3 extends AbstractC2878E3 {

    /* renamed from: c */
    private C2990Y3 f898c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2902I3(InterfaceC3073m3 interfaceC3073m3) {
        super(interfaceC3073m3);
    }

    @Override // p033j$.util.stream.InterfaceC3067l3, p033j$.util.function.InterfaceC2827p
    public void accept(long j) {
        this.f898c.accept(j);
    }

    @Override // p033j$.util.stream.AbstractC3043h3, p033j$.util.stream.InterfaceC3073m3
    /* renamed from: l */
    public void mo385l() {
        long[] jArr = (long[]) this.f898c.mo341e();
        Arrays.sort(jArr);
        this.f1097a.mo361m(jArr.length);
        int i = 0;
        if (this.f865b) {
            int length = jArr.length;
            while (i < length) {
                long j = jArr[i];
                if (this.f1097a.mo360o()) {
                    break;
                }
                this.f1097a.accept(j);
                i++;
            }
        } else {
            int length2 = jArr.length;
            while (i < length2) {
                this.f1097a.accept(jArr[i]);
                i++;
            }
        }
        this.f1097a.mo385l();
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: m */
    public void mo361m(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f898c = j > 0 ? new C2990Y3((int) j) : new C2990Y3();
    }
}
