package p034j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.I3 */
/* loaded from: classes2.dex */
final class C2667I3 extends AbstractC2643E3 {

    /* renamed from: c */
    private C2755Y3 f759c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2667I3(InterfaceC2838m3 interfaceC2838m3) {
        super(interfaceC2838m3);
    }

    @Override // p034j$.util.stream.InterfaceC2832l3, p034j$.util.function.InterfaceC2589q
    public void accept(long j) {
        this.f759c.accept(j);
    }

    @Override // p034j$.util.stream.AbstractC2808h3, p034j$.util.stream.InterfaceC2838m3
    /* renamed from: m */
    public void mo336m() {
        long[] jArr = (long[]) this.f759c.mo292e();
        Arrays.sort(jArr);
        this.f958a.mo312n(jArr.length);
        int i = 0;
        if (this.f726b) {
            int length = jArr.length;
            while (i < length) {
                long j = jArr[i];
                if (this.f958a.mo311o()) {
                    break;
                }
                this.f958a.accept(j);
                i++;
            }
        } else {
            int length2 = jArr.length;
            while (i < length2) {
                this.f958a.accept(jArr[i]);
                i++;
            }
        }
        this.f958a.mo336m();
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: n */
    public void mo312n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f759c = j > 0 ? new C2755Y3((int) j) : new C2755Y3();
    }
}
