package p035j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.H3 */
/* loaded from: classes2.dex */
final class C2751H3 extends AbstractC2727D3 {

    /* renamed from: c */
    private C2835W3 f758c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2751H3(InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
    }

    @Override // p035j$.util.stream.InterfaceC2916k3, p035j$.util.stream.InterfaceC2928m3
    public void accept(int i) {
        this.f758c.accept(i);
    }

    @Override // p035j$.util.stream.AbstractC2892g3, p035j$.util.stream.InterfaceC2928m3
    /* renamed from: m */
    public void mo330m() {
        int[] iArr = (int[]) this.f758c.mo286e();
        Arrays.sort(iArr);
        this.f959a.mo306n(iArr.length);
        int i = 0;
        if (this.f720b) {
            int length = iArr.length;
            while (i < length) {
                int i2 = iArr[i];
                if (this.f959a.mo305o()) {
                    break;
                }
                this.f959a.accept(i2);
                i++;
            }
        } else {
            int length2 = iArr.length;
            while (i < length2) {
                this.f959a.accept(iArr[i]);
                i++;
            }
        }
        this.f959a.mo330m();
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public void mo306n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f758c = j > 0 ? new C2835W3((int) j) : new C2835W3();
    }
}
