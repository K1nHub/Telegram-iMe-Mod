package p034j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.I3 */
/* loaded from: classes2.dex */
final class C2744I3 extends AbstractC2720E3 {

    /* renamed from: c */
    private C2832Y3 f760c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2744I3(InterfaceC2915m3 interfaceC2915m3) {
        super(interfaceC2915m3);
    }

    @Override // p034j$.util.stream.InterfaceC2909l3, p034j$.util.function.InterfaceC2666q
    public void accept(long j) {
        this.f760c.accept(j);
    }

    @Override // p034j$.util.stream.AbstractC2885h3, p034j$.util.stream.InterfaceC2915m3
    /* renamed from: m */
    public void mo316m() {
        long[] jArr = (long[]) this.f760c.mo272e();
        Arrays.sort(jArr);
        this.f959a.mo292n(jArr.length);
        int i = 0;
        if (this.f727b) {
            int length = jArr.length;
            while (i < length) {
                long j = jArr[i];
                if (this.f959a.mo291o()) {
                    break;
                }
                this.f959a.accept(j);
                i++;
            }
        } else {
            int length2 = jArr.length;
            while (i < length2) {
                this.f959a.accept(jArr[i]);
                i++;
            }
        }
        this.f959a.mo316m();
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: n */
    public void mo292n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f760c = j > 0 ? new C2832Y3((int) j) : new C2832Y3();
    }
}
