package p033j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.P3 */
/* loaded from: classes2.dex */
final class C3006P3 extends AbstractC2934D3 {

    /* renamed from: c */
    private int[] f905c;

    /* renamed from: d */
    private int f906d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3006P3(InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
    }

    @Override // p033j$.util.stream.InterfaceC3123k3, p033j$.util.stream.InterfaceC3135m3
    public void accept(int i) {
        int[] iArr = this.f905c;
        int i2 = this.f906d;
        this.f906d = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p033j$.util.stream.AbstractC3099g3, p033j$.util.stream.InterfaceC3135m3
    /* renamed from: m */
    public void mo339m() {
        int i = 0;
        Arrays.sort(this.f905c, 0, this.f906d);
        this.f1043a.mo315n(this.f906d);
        if (this.f804b) {
            while (i < this.f906d && !this.f1043a.mo314o()) {
                this.f1043a.accept(this.f905c[i]);
                i++;
            }
        } else {
            while (i < this.f906d) {
                this.f1043a.accept(this.f905c[i]);
                i++;
            }
        }
        this.f1043a.mo339m();
        this.f905c = null;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: n */
    public void mo315n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f905c = new int[(int) j];
    }
}
