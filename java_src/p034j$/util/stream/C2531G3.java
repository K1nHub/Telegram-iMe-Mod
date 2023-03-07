package p034j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.G3 */
/* loaded from: classes2.dex */
final class C2531G3 extends AbstractC2507C3 {

    /* renamed from: c */
    private C2611U3 f740c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2531G3(InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
    }

    @Override // p034j$.util.stream.InterfaceC2696j3, p034j$.util.stream.InterfaceC2714m3
    public void accept(double d) {
        this.f740c.accept(d);
    }

    @Override // p034j$.util.stream.AbstractC2672f3, p034j$.util.stream.InterfaceC2714m3
    /* renamed from: m */
    public void mo336m() {
        double[] dArr = (double[]) this.f740c.mo292e();
        Arrays.sort(dArr);
        this.f936a.mo312n(dArr.length);
        int i = 0;
        if (this.f702b) {
            int length = dArr.length;
            while (i < length) {
                double d = dArr[i];
                if (this.f936a.mo311o()) {
                    break;
                }
                this.f936a.accept(d);
                i++;
            }
        } else {
            int length2 = dArr.length;
            while (i < length2) {
                this.f936a.accept(dArr[i]);
                i++;
            }
        }
        this.f936a.mo336m();
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f740c = j > 0 ? new C2611U3((int) j) : new C2611U3();
    }
}
