package p033j$.util.stream;

import java.util.Arrays;
/* renamed from: j$.util.stream.I3 */
/* loaded from: classes2.dex */
final class C3048I3 extends AbstractC3024E3 {

    /* renamed from: c */
    private C3136Y3 f858c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3048I3(InterfaceC3219m3 interfaceC3219m3) {
        super(interfaceC3219m3);
    }

    @Override // p033j$.util.stream.InterfaceC3213l3, p033j$.util.function.InterfaceC2970q
    public void accept(long j) {
        this.f858c.accept(j);
    }

    @Override // p033j$.util.stream.AbstractC3189h3, p033j$.util.stream.InterfaceC3219m3
    /* renamed from: m */
    public void mo339m() {
        long[] jArr = (long[]) this.f858c.mo295e();
        Arrays.sort(jArr);
        this.f1057a.mo315n(jArr.length);
        int i = 0;
        if (this.f825b) {
            int length = jArr.length;
            while (i < length) {
                long j = jArr[i];
                if (this.f1057a.mo314o()) {
                    break;
                }
                this.f1057a.accept(j);
                i++;
            }
        } else {
            int length2 = jArr.length;
            while (i < length2) {
                this.f1057a.accept(jArr[i]);
                i++;
            }
        }
        this.f1057a.mo339m();
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public void mo315n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f858c = j > 0 ? new C3136Y3((int) j) : new C3136Y3();
    }
}
