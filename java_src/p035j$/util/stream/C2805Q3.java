package p035j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.Q3 */
/* loaded from: classes2.dex */
final class C2805Q3 extends AbstractC2733E3 {

    /* renamed from: c */
    private long[] f828c;

    /* renamed from: d */
    private int f829d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2805Q3(InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
    }

    @Override // p035j$.util.stream.InterfaceC2922l3, p035j$.util.function.InterfaceC2679q
    public void accept(long j) {
        long[] jArr = this.f828c;
        int i = this.f829d;
        this.f829d = i + 1;
        jArr[i] = j;
    }

    @Override // p035j$.util.stream.AbstractC2898h3, p035j$.util.stream.InterfaceC2928m3
    /* renamed from: m */
    public void mo330m() {
        int i = 0;
        Arrays.sort(this.f828c, 0, this.f829d);
        this.f964a.mo306n(this.f829d);
        if (this.f732b) {
            while (i < this.f829d && !this.f964a.mo305o()) {
                this.f964a.accept(this.f828c[i]);
                i++;
            }
        } else {
            while (i < this.f829d) {
                this.f964a.accept(this.f828c[i]);
                i++;
            }
        }
        this.f964a.mo330m();
        this.f828c = null;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public void mo306n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f828c = new long[(int) j];
    }
}
