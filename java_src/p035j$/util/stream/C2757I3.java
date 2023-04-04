package p035j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.I3 */
/* loaded from: classes2.dex */
final class C2757I3 extends AbstractC2733E3 {

    /* renamed from: c */
    private C2845Y3 f765c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2757I3(InterfaceC2928m3 interfaceC2928m3) {
        super(interfaceC2928m3);
    }

    @Override // p035j$.util.stream.InterfaceC2922l3, p035j$.util.function.InterfaceC2679q
    public void accept(long j) {
        this.f765c.accept(j);
    }

    @Override // p035j$.util.stream.AbstractC2898h3, p035j$.util.stream.InterfaceC2928m3
    /* renamed from: m */
    public void mo330m() {
        long[] jArr = (long[]) this.f765c.mo286e();
        Arrays.sort(jArr);
        this.f964a.mo306n(jArr.length);
        int i = 0;
        if (this.f732b) {
            int length = jArr.length;
            while (i < length) {
                long j = jArr[i];
                if (this.f964a.mo305o()) {
                    break;
                }
                this.f964a.accept(j);
                i++;
            }
        } else {
            int length2 = jArr.length;
            while (i < length2) {
                this.f964a.accept(jArr[i]);
                i++;
            }
        }
        this.f964a.mo330m();
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public void mo306n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f765c = j > 0 ? new C2845Y3((int) j) : new C2845Y3();
    }
}
