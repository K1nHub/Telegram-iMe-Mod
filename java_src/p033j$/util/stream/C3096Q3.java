package p033j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.Q3 */
/* loaded from: classes2.dex */
final class C3096Q3 extends AbstractC3024E3 {

    /* renamed from: c */
    private long[] f921c;

    /* renamed from: d */
    private int f922d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3096Q3(InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
    }

    @Override // p033j$.util.stream.InterfaceC3213l3, p033j$.util.function.InterfaceC2970q
    public void accept(long j) {
        long[] jArr = this.f921c;
        int i = this.f922d;
        this.f922d = i + 1;
        jArr[i] = j;
    }

    @Override // p033j$.util.stream.AbstractC3189h3, p033j$.util.stream.InterfaceC3219m3
    /* renamed from: m */
    public void mo339m() {
        int i = 0;
        Arrays.sort(this.f921c, 0, this.f922d);
        this.f1057a.mo315n(this.f922d);
        if (this.f825b) {
            while (i < this.f922d && !this.f1057a.mo314o()) {
                this.f1057a.accept(this.f921c[i]);
                i++;
            }
        } else {
            while (i < this.f922d) {
                this.f1057a.accept(this.f921c[i]);
                i++;
            }
        }
        this.f1057a.mo339m();
        this.f921c = null;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public void mo315n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f921c = new long[(int) j];
    }
}
