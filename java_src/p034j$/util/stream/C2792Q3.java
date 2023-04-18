package p034j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.Q3 */
/* loaded from: classes2.dex */
final class C2792Q3 extends AbstractC2720E3 {

    /* renamed from: c */
    private long[] f823c;

    /* renamed from: d */
    private int f824d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2792Q3(InterfaceC2915m3 interfaceC2915m3) {
        super(interfaceC2915m3);
    }

    @Override // p034j$.util.stream.InterfaceC2909l3, p034j$.util.function.InterfaceC2666q
    public void accept(long j) {
        long[] jArr = this.f823c;
        int i = this.f824d;
        this.f824d = i + 1;
        jArr[i] = j;
    }

    @Override // p034j$.util.stream.AbstractC2885h3, p034j$.util.stream.InterfaceC2915m3
    /* renamed from: m */
    public void mo316m() {
        int i = 0;
        Arrays.sort(this.f823c, 0, this.f824d);
        this.f959a.mo292n(this.f824d);
        if (this.f727b) {
            while (i < this.f824d && !this.f959a.mo291o()) {
                this.f959a.accept(this.f823c[i]);
                i++;
            }
        } else {
            while (i < this.f824d) {
                this.f959a.accept(this.f823c[i]);
                i++;
            }
        }
        this.f959a.mo316m();
        this.f823c = null;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: n */
    public void mo292n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f823c = new long[(int) j];
    }
}
