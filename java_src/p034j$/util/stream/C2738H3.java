package p034j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.H3 */
/* loaded from: classes2.dex */
final class C2738H3 extends AbstractC2714D3 {

    /* renamed from: c */
    private C2822W3 f753c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2738H3(InterfaceC2915m3 interfaceC2915m3) {
        super(interfaceC2915m3);
    }

    @Override // p034j$.util.stream.InterfaceC2903k3, p034j$.util.stream.InterfaceC2915m3
    public void accept(int i) {
        this.f753c.accept(i);
    }

    @Override // p034j$.util.stream.AbstractC2879g3, p034j$.util.stream.InterfaceC2915m3
    /* renamed from: m */
    public void mo316m() {
        int[] iArr = (int[]) this.f753c.mo272e();
        Arrays.sort(iArr);
        this.f954a.mo292n(iArr.length);
        int i = 0;
        if (this.f715b) {
            int length = iArr.length;
            while (i < length) {
                int i2 = iArr[i];
                if (this.f954a.mo291o()) {
                    break;
                }
                this.f954a.accept(i2);
                i++;
            }
        } else {
            int length2 = iArr.length;
            while (i < length2) {
                this.f954a.accept(iArr[i]);
                i++;
            }
        }
        this.f954a.mo316m();
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: n */
    public void mo292n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f753c = j > 0 ? new C2822W3((int) j) : new C2822W3();
    }
}
