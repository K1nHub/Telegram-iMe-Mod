package p034j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.G3 */
/* loaded from: classes2.dex */
final class C2655G3 extends AbstractC2631C3 {

    /* renamed from: c */
    private C2735U3 f745c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2655G3(InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
    }

    @Override // p034j$.util.stream.InterfaceC2820j3, p034j$.util.stream.InterfaceC2838m3
    public void accept(double d) {
        this.f745c.accept(d);
    }

    @Override // p034j$.util.stream.AbstractC2796f3, p034j$.util.stream.InterfaceC2838m3
    /* renamed from: m */
    public void mo336m() {
        double[] dArr = (double[]) this.f745c.mo292e();
        Arrays.sort(dArr);
        this.f941a.mo312n(dArr.length);
        int i = 0;
        if (this.f707b) {
            int length = dArr.length;
            while (i < length) {
                double d = dArr[i];
                if (this.f941a.mo311o()) {
                    break;
                }
                this.f941a.accept(d);
                i++;
            }
        } else {
            int length2 = dArr.length;
            while (i < length2) {
                this.f941a.accept(dArr[i]);
                i++;
            }
        }
        this.f941a.mo336m();
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: n */
    public void mo312n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f745c = j > 0 ? new C2735U3((int) j) : new C2735U3();
    }
}
