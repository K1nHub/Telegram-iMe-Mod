package p033j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.G3 */
/* loaded from: classes2.dex */
final class C2952G3 extends AbstractC2928C3 {

    /* renamed from: c */
    private C3032U3 f835c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2952G3(InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
    }

    @Override // p033j$.util.stream.InterfaceC3117j3, p033j$.util.stream.InterfaceC3135m3
    public void accept(double d) {
        this.f835c.accept(d);
    }

    @Override // p033j$.util.stream.AbstractC3093f3, p033j$.util.stream.InterfaceC3135m3
    /* renamed from: m */
    public void mo339m() {
        double[] dArr = (double[]) this.f835c.mo295e();
        Arrays.sort(dArr);
        this.f1031a.mo315n(dArr.length);
        int i = 0;
        if (this.f797b) {
            int length = dArr.length;
            while (i < length) {
                double d = dArr[i];
                if (this.f1031a.mo314o()) {
                    break;
                }
                this.f1031a.accept(d);
                i++;
            }
        } else {
            int length2 = dArr.length;
            while (i < length2) {
                this.f1031a.accept(dArr[i]);
                i++;
            }
        }
        this.f1031a.mo339m();
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: n */
    public void mo315n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f835c = j > 0 ? new C3032U3((int) j) : new C3032U3();
    }
}
