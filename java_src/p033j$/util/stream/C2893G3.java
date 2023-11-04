package p033j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.G3 */
/* loaded from: classes2.dex */
final class C2893G3 extends AbstractC2869C3 {

    /* renamed from: c */
    private C2973U3 f884c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2893G3(InterfaceC3076m3 interfaceC3076m3) {
        super(interfaceC3076m3);
    }

    @Override // p033j$.util.stream.InterfaceC3058j3, p033j$.util.stream.InterfaceC3076m3
    public void accept(double d) {
        this.f884c.accept(d);
    }

    @Override // p033j$.util.stream.AbstractC3034f3, p033j$.util.stream.InterfaceC3076m3
    /* renamed from: l */
    public void mo385l() {
        double[] dArr = (double[]) this.f884c.mo341e();
        Arrays.sort(dArr);
        this.f1080a.mo361m(dArr.length);
        int i = 0;
        if (this.f846b) {
            int length = dArr.length;
            while (i < length) {
                double d = dArr[i];
                if (this.f1080a.mo360o()) {
                    break;
                }
                this.f1080a.accept(d);
                i++;
            }
        } else {
            int length2 = dArr.length;
            while (i < length2) {
                this.f1080a.accept(dArr[i]);
                i++;
            }
        }
        this.f1080a.mo385l();
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: m */
    public void mo361m(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f884c = j > 0 ? new C2973U3((int) j) : new C2973U3();
    }
}
