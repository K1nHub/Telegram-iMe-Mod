package p034j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.I3 */
/* loaded from: classes2.dex */
final class C2783I3 extends AbstractC2759E3 {

    /* renamed from: c */
    private C2871Y3 f763c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2783I3(InterfaceC2954m3 interfaceC2954m3) {
        super(interfaceC2954m3);
    }

    @Override // p034j$.util.stream.InterfaceC2948l3, p034j$.util.function.InterfaceC2705q
    public void accept(long j) {
        this.f763c.accept(j);
    }

    @Override // p034j$.util.stream.AbstractC2924h3, p034j$.util.stream.InterfaceC2954m3
    /* renamed from: m */
    public void mo321m() {
        long[] jArr = (long[]) this.f763c.mo277e();
        Arrays.sort(jArr);
        this.f962a.mo297n(jArr.length);
        int i = 0;
        if (this.f730b) {
            int length = jArr.length;
            while (i < length) {
                long j = jArr[i];
                if (this.f962a.mo296o()) {
                    break;
                }
                this.f962a.accept(j);
                i++;
            }
        } else {
            int length2 = jArr.length;
            while (i < length2) {
                this.f962a.accept(jArr[i]);
                i++;
            }
        }
        this.f962a.mo321m();
    }

    @Override // p034j$.util.stream.InterfaceC2954m3
    /* renamed from: n */
    public void mo297n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f763c = j > 0 ? new C2871Y3((int) j) : new C2871Y3();
    }
}
