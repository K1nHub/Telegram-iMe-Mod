package p035j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.G3 */
/* loaded from: classes2.dex */
final class C2745G3 extends AbstractC2721C3 {

    /* renamed from: c */
    private C2825U3 f751c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2745G3(InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
    }

    @Override // p035j$.util.stream.InterfaceC2910j3, p035j$.util.stream.InterfaceC2928m3
    public void accept(double d) {
        this.f751c.accept(d);
    }

    @Override // p035j$.util.stream.AbstractC2886f3, p035j$.util.stream.InterfaceC2928m3
    /* renamed from: m */
    public void mo330m() {
        double[] dArr = (double[]) this.f751c.mo286e();
        Arrays.sort(dArr);
        this.f947a.mo306n(dArr.length);
        int i = 0;
        if (this.f713b) {
            int length = dArr.length;
            while (i < length) {
                double d = dArr[i];
                if (this.f947a.mo305o()) {
                    break;
                }
                this.f947a.accept(d);
                i++;
            }
        } else {
            int length2 = dArr.length;
            while (i < length2) {
                this.f947a.accept(dArr[i]);
                i++;
            }
        }
        this.f947a.mo330m();
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public void mo306n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f751c = j > 0 ? new C2825U3((int) j) : new C2825U3();
    }
}
