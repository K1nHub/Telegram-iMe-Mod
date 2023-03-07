package p034j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.I3 */
/* loaded from: classes2.dex */
final class C2543I3 extends AbstractC2519E3 {

    /* renamed from: c */
    private C2631Y3 f754c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2543I3(InterfaceC2714m3 interfaceC2714m3) {
        super(interfaceC2714m3);
    }

    @Override // p034j$.util.stream.InterfaceC2708l3, p034j$.util.function.InterfaceC2465q
    public void accept(long j) {
        this.f754c.accept(j);
    }

    @Override // p034j$.util.stream.AbstractC2684h3, p034j$.util.stream.InterfaceC2714m3
    /* renamed from: m */
    public void mo336m() {
        long[] jArr = (long[]) this.f754c.mo292e();
        Arrays.sort(jArr);
        this.f953a.mo312n(jArr.length);
        int i = 0;
        if (this.f721b) {
            int length = jArr.length;
            while (i < length) {
                long j = jArr[i];
                if (this.f953a.mo311o()) {
                    break;
                }
                this.f953a.accept(j);
                i++;
            }
        } else {
            int length2 = jArr.length;
            while (i < length2) {
                this.f953a.accept(jArr[i]);
                i++;
            }
        }
        this.f953a.mo336m();
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f754c = j > 0 ? new C2631Y3((int) j) : new C2631Y3();
    }
}
