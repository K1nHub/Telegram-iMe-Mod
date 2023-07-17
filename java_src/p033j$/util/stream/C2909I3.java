package p033j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.I3 */
/* loaded from: classes2.dex */
final class C2909I3 extends AbstractC2885E3 {

    /* renamed from: c */
    private C2997Y3 f845c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2909I3(InterfaceC3080m3 interfaceC3080m3) {
        super(interfaceC3080m3);
    }

    @Override // p033j$.util.stream.InterfaceC3074l3, p033j$.util.function.InterfaceC2831q
    public void accept(long j) {
        this.f845c.accept(j);
    }

    @Override // p033j$.util.stream.AbstractC3050h3, p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public void mo321m() {
        long[] jArr = (long[]) this.f845c.mo277e();
        Arrays.sort(jArr);
        this.f1044a.mo297n(jArr.length);
        int i = 0;
        if (this.f812b) {
            int length = jArr.length;
            while (i < length) {
                long j = jArr[i];
                if (this.f1044a.mo296o()) {
                    break;
                }
                this.f1044a.accept(j);
                i++;
            }
        } else {
            int length2 = jArr.length;
            while (i < length2) {
                this.f1044a.accept(jArr[i]);
                i++;
            }
        }
        this.f1044a.mo321m();
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo297n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f845c = j > 0 ? new C2997Y3((int) j) : new C2997Y3();
    }
}
