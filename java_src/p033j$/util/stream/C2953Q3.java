package p033j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.Q3 */
/* loaded from: classes2.dex */
final class C2953Q3 extends AbstractC2881E3 {

    /* renamed from: c */
    private long[] f961c;

    /* renamed from: d */
    private int f962d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2953Q3(InterfaceC3076m3 interfaceC3076m3) {
        super(interfaceC3076m3);
    }

    @Override // p033j$.util.stream.InterfaceC3070l3, p033j$.util.function.InterfaceC2830p
    public void accept(long j) {
        long[] jArr = this.f961c;
        int i = this.f962d;
        this.f962d = i + 1;
        jArr[i] = j;
    }

    @Override // p033j$.util.stream.AbstractC3046h3, p033j$.util.stream.InterfaceC3076m3
    /* renamed from: l */
    public void mo385l() {
        int i = 0;
        Arrays.sort(this.f961c, 0, this.f962d);
        this.f1097a.mo361m(this.f962d);
        if (this.f865b) {
            while (i < this.f962d && !this.f1097a.mo360o()) {
                this.f1097a.accept(this.f961c[i]);
                i++;
            }
        } else {
            while (i < this.f962d) {
                this.f1097a.accept(this.f961c[i]);
                i++;
            }
        }
        this.f1097a.mo385l();
        this.f961c = null;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: m */
    public void mo361m(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f961c = new long[(int) j];
    }
}
