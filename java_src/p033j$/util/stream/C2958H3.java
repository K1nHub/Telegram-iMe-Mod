package p033j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.H3 */
/* loaded from: classes2.dex */
final class C2958H3 extends AbstractC2934D3 {

    /* renamed from: c */
    private C3042W3 f842c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2958H3(InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
    }

    @Override // p033j$.util.stream.InterfaceC3123k3, p033j$.util.stream.InterfaceC3135m3
    public void accept(int i) {
        this.f842c.accept(i);
    }

    @Override // p033j$.util.stream.AbstractC3099g3, p033j$.util.stream.InterfaceC3135m3
    /* renamed from: m */
    public void mo339m() {
        int[] iArr = (int[]) this.f842c.mo295e();
        Arrays.sort(iArr);
        this.f1043a.mo315n(iArr.length);
        int i = 0;
        if (this.f804b) {
            int length = iArr.length;
            while (i < length) {
                int i2 = iArr[i];
                if (this.f1043a.mo314o()) {
                    break;
                }
                this.f1043a.accept(i2);
                i++;
            }
        } else {
            int length2 = iArr.length;
            while (i < length2) {
                this.f1043a.accept(iArr[i]);
                i++;
            }
        }
        this.f1043a.mo339m();
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: n */
    public void mo315n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f842c = j > 0 ? new C3042W3((int) j) : new C3042W3();
    }
}
