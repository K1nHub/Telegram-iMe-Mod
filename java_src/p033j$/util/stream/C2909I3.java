package p033j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.I3 */
/* loaded from: classes2.dex */
final class C2909I3 extends AbstractC2885E3 {

    /* renamed from: c */
    private C2997Y3 f848c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2909I3(InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
    }

    @Override // p033j$.util.stream.InterfaceC3074l3, p033j$.util.function.InterfaceC2831q
    public void accept(long j) {
        this.f848c.accept(j);
    }

    @Override // p033j$.util.stream.AbstractC3050h3, p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public void mo339m() {
        long[] jArr = (long[]) this.f848c.mo295e();
        Arrays.sort(jArr);
        this.f1047a.mo315n(jArr.length);
        int i = 0;
        if (this.f815b) {
            int length = jArr.length;
            while (i < length) {
                long j = jArr[i];
                if (this.f1047a.mo314o()) {
                    break;
                }
                this.f1047a.accept(j);
                i++;
            }
        } else {
            int length2 = jArr.length;
            while (i < length2) {
                this.f1047a.accept(jArr[i]);
                i++;
            }
        }
        this.f1047a.mo339m();
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo315n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f848c = j > 0 ? new C2997Y3((int) j) : new C2997Y3();
    }
}
