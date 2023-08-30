package p033j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.G3 */
/* loaded from: classes2.dex */
final class C3036G3 extends AbstractC3012C3 {

    /* renamed from: c */
    private C3116U3 f844c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3036G3(InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
    }

    @Override // p033j$.util.stream.InterfaceC3201j3, p033j$.util.stream.InterfaceC3219m3
    public void accept(double d) {
        this.f844c.accept(d);
    }

    @Override // p033j$.util.stream.AbstractC3177f3, p033j$.util.stream.InterfaceC3219m3
    /* renamed from: m */
    public void mo339m() {
        double[] dArr = (double[]) this.f844c.mo295e();
        Arrays.sort(dArr);
        this.f1040a.mo315n(dArr.length);
        int i = 0;
        if (this.f806b) {
            int length = dArr.length;
            while (i < length) {
                double d = dArr[i];
                if (this.f1040a.mo314o()) {
                    break;
                }
                this.f1040a.accept(d);
                i++;
            }
        } else {
            int length2 = dArr.length;
            while (i < length2) {
                this.f1040a.accept(dArr[i]);
                i++;
            }
        }
        this.f1040a.mo339m();
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public void mo315n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f844c = j > 0 ? new C3116U3((int) j) : new C3116U3();
    }
}
