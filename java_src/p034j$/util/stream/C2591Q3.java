package p034j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.Q3 */
/* loaded from: classes2.dex */
final class C2591Q3 extends AbstractC2519E3 {

    /* renamed from: c */
    private long[] f817c;

    /* renamed from: d */
    private int f818d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2591Q3(InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
    }

    @Override // p034j$.util.stream.InterfaceC2708l3, p034j$.util.function.InterfaceC2465q
    public void accept(long j) {
        long[] jArr = this.f817c;
        int i = this.f818d;
        this.f818d = i + 1;
        jArr[i] = j;
    }

    @Override // p034j$.util.stream.AbstractC2684h3, p034j$.util.stream.InterfaceC2714m3
    /* renamed from: m */
    public void mo336m() {
        int i = 0;
        Arrays.sort(this.f817c, 0, this.f818d);
        this.f953a.mo312n(this.f818d);
        if (this.f721b) {
            while (i < this.f818d && !this.f953a.mo311o()) {
                this.f953a.accept(this.f817c[i]);
                i++;
            }
        } else {
            while (i < this.f818d) {
                this.f953a.accept(this.f817c[i]);
                i++;
            }
        }
        this.f953a.mo336m();
        this.f817c = null;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f817c = new long[(int) j];
    }
}
