package p034j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.G3 */
/* loaded from: classes2.dex */
final class C2771G3 extends AbstractC2747C3 {

    /* renamed from: c */
    private C2851U3 f749c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2771G3(InterfaceC2954m3 interfaceC2954m3) {
        super(interfaceC2954m3);
    }

    @Override // p034j$.util.stream.InterfaceC2936j3, p034j$.util.stream.InterfaceC2954m3
    public void accept(double d) {
        this.f749c.accept(d);
    }

    @Override // p034j$.util.stream.AbstractC2912f3, p034j$.util.stream.InterfaceC2954m3
    /* renamed from: m */
    public void mo321m() {
        double[] dArr = (double[]) this.f749c.mo277e();
        Arrays.sort(dArr);
        this.f945a.mo297n(dArr.length);
        int i = 0;
        if (this.f711b) {
            int length = dArr.length;
            while (i < length) {
                double d = dArr[i];
                if (this.f945a.mo296o()) {
                    break;
                }
                this.f945a.accept(d);
                i++;
            }
        } else {
            int length2 = dArr.length;
            while (i < length2) {
                this.f945a.accept(dArr[i]);
                i++;
            }
        }
        this.f945a.mo321m();
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: n */
    public void mo297n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f749c = j > 0 ? new C2851U3((int) j) : new C2851U3();
    }
}
