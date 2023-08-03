package p033j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.G3 */
/* loaded from: classes2.dex */
final class C2897G3 extends AbstractC2873C3 {

    /* renamed from: c */
    private C2977U3 f834c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2897G3(InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
    }

    @Override // p033j$.util.stream.InterfaceC3062j3, p033j$.util.stream.InterfaceC3080m3
    public void accept(double d) {
        this.f834c.accept(d);
    }

    @Override // p033j$.util.stream.AbstractC3038f3, p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public void mo339m() {
        double[] dArr = (double[]) this.f834c.mo295e();
        Arrays.sort(dArr);
        this.f1030a.mo315n(dArr.length);
        int i = 0;
        if (this.f796b) {
            int length = dArr.length;
            while (i < length) {
                double d = dArr[i];
                if (this.f1030a.mo314o()) {
                    break;
                }
                this.f1030a.accept(d);
                i++;
            }
        } else {
            int length2 = dArr.length;
            while (i < length2) {
                this.f1030a.accept(dArr[i]);
                i++;
            }
        }
        this.f1030a.mo339m();
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo315n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f834c = j > 0 ? new C2977U3((int) j) : new C2977U3();
    }
}
