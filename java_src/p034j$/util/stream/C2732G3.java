package p034j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.G3 */
/* loaded from: classes2.dex */
final class C2732G3 extends AbstractC2708C3 {

    /* renamed from: c */
    private C2812U3 f746c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2732G3(InterfaceC2915m3 interfaceC2915m3) {
        super(interfaceC2915m3);
    }

    @Override // p034j$.util.stream.InterfaceC2897j3, p034j$.util.stream.InterfaceC2915m3
    public void accept(double d) {
        this.f746c.accept(d);
    }

    @Override // p034j$.util.stream.AbstractC2873f3, p034j$.util.stream.InterfaceC2915m3
    /* renamed from: m */
    public void mo316m() {
        double[] dArr = (double[]) this.f746c.mo272e();
        Arrays.sort(dArr);
        this.f942a.mo292n(dArr.length);
        int i = 0;
        if (this.f708b) {
            int length = dArr.length;
            while (i < length) {
                double d = dArr[i];
                if (this.f942a.mo291o()) {
                    break;
                }
                this.f942a.accept(d);
                i++;
            }
        } else {
            int length2 = dArr.length;
            while (i < length2) {
                this.f942a.accept(dArr[i]);
                i++;
            }
        }
        this.f942a.mo316m();
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: n */
    public void mo292n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f746c = j > 0 ? new C2812U3((int) j) : new C2812U3();
    }
}
