package p033j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.I3 */
/* loaded from: classes2.dex */
final class C2964I3 extends AbstractC2940E3 {

    /* renamed from: c */
    private C3052Y3 f849c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2964I3(InterfaceC3135m3 interfaceC3135m3) {
        super(interfaceC3135m3);
    }

    @Override // p033j$.util.stream.InterfaceC3129l3, p033j$.util.function.InterfaceC2886q
    public void accept(long j) {
        this.f849c.accept(j);
    }

    @Override // p033j$.util.stream.AbstractC3105h3, p033j$.util.stream.InterfaceC3135m3
    /* renamed from: m */
    public void mo339m() {
        long[] jArr = (long[]) this.f849c.mo295e();
        Arrays.sort(jArr);
        this.f1048a.mo315n(jArr.length);
        int i = 0;
        if (this.f816b) {
            int length = jArr.length;
            while (i < length) {
                long j = jArr[i];
                if (this.f1048a.mo314o()) {
                    break;
                }
                this.f1048a.accept(j);
                i++;
            }
        } else {
            int length2 = jArr.length;
            while (i < length2) {
                this.f1048a.accept(jArr[i]);
                i++;
            }
        }
        this.f1048a.mo339m();
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: n */
    public void mo315n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f849c = j > 0 ? new C3052Y3((int) j) : new C3052Y3();
    }
}
