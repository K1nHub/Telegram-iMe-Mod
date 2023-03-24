package p034j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.Q3 */
/* loaded from: classes2.dex */
final class C2729Q3 extends AbstractC2657E3 {

    /* renamed from: c */
    private long[] f823c;

    /* renamed from: d */
    private int f824d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2729Q3(InterfaceC2852m3 interfaceC2852m3) {
        super(interfaceC2852m3);
    }

    @Override // p034j$.util.stream.InterfaceC2846l3, p034j$.util.function.InterfaceC2603q
    public void accept(long j) {
        long[] jArr = this.f823c;
        int i = this.f824d;
        this.f824d = i + 1;
        jArr[i] = j;
    }

    @Override // p034j$.util.stream.AbstractC2822h3, p034j$.util.stream.InterfaceC2852m3
    /* renamed from: m */
    public void mo335m() {
        int i = 0;
        Arrays.sort(this.f823c, 0, this.f824d);
        this.f959a.mo311n(this.f824d);
        if (this.f727b) {
            while (i < this.f824d && !this.f959a.mo310o()) {
                this.f959a.accept(this.f823c[i]);
                i++;
            }
        } else {
            while (i < this.f824d) {
                this.f959a.accept(this.f823c[i]);
                i++;
            }
        }
        this.f959a.mo335m();
        this.f823c = null;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public void mo311n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f823c = new long[(int) j];
    }
}
