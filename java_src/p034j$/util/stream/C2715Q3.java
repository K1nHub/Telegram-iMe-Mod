package p034j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.Q3 */
/* loaded from: classes2.dex */
final class C2715Q3 extends AbstractC2643E3 {

    /* renamed from: c */
    private long[] f822c;

    /* renamed from: d */
    private int f823d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2715Q3(InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
    }

    @Override // p034j$.util.stream.InterfaceC2832l3, p034j$.util.function.InterfaceC2589q
    public void accept(long j) {
        long[] jArr = this.f822c;
        int i = this.f823d;
        this.f823d = i + 1;
        jArr[i] = j;
    }

    @Override // p034j$.util.stream.AbstractC2808h3, p034j$.util.stream.InterfaceC2838m3
    /* renamed from: m */
    public void mo336m() {
        int i = 0;
        Arrays.sort(this.f822c, 0, this.f823d);
        this.f958a.mo312n(this.f823d);
        if (this.f726b) {
            while (i < this.f823d && !this.f958a.mo311o()) {
                this.f958a.accept(this.f822c[i]);
                i++;
            }
        } else {
            while (i < this.f823d) {
                this.f958a.accept(this.f822c[i]);
                i++;
            }
        }
        this.f958a.mo336m();
        this.f822c = null;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: n */
    public void mo312n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f822c = new long[(int) j];
    }
}
