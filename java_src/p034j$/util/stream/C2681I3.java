package p034j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.I3 */
/* loaded from: classes2.dex */
final class C2681I3 extends AbstractC2657E3 {

    /* renamed from: c */
    private C2769Y3 f760c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2681I3(InterfaceC2852m3 interfaceC2852m3) {
        super(interfaceC2852m3);
    }

    @Override // p034j$.util.stream.InterfaceC2846l3, p034j$.util.function.InterfaceC2603q
    public void accept(long j) {
        this.f760c.accept(j);
    }

    @Override // p034j$.util.stream.AbstractC2822h3, p034j$.util.stream.InterfaceC2852m3
    /* renamed from: m */
    public void mo335m() {
        long[] jArr = (long[]) this.f760c.mo291e();
        Arrays.sort(jArr);
        this.f959a.mo311n(jArr.length);
        int i = 0;
        if (this.f727b) {
            int length = jArr.length;
            while (i < length) {
                long j = jArr[i];
                if (this.f959a.mo310o()) {
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
        this.f959a.mo335m();
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public void mo311n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f760c = j > 0 ? new C2769Y3((int) j) : new C2769Y3();
    }
}
