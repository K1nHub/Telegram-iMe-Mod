package p033j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;
/* renamed from: j$.util.stream.R3 */
/* loaded from: classes2.dex */
final class C2953R3 extends AbstractC2882F3 {

    /* renamed from: d */
    private Object[] f968d;

    /* renamed from: e */
    private int f969e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2953R3(InterfaceC3071m3 interfaceC3071m3, Comparator comparator) {
        super(interfaceC3071m3, comparator);
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        Object[] objArr = this.f968d;
        int i = this.f969e;
        this.f969e = i + 1;
        objArr[i] = obj;
    }

    @Override // p033j$.util.stream.AbstractC3047i3, p033j$.util.stream.InterfaceC3071m3
    /* renamed from: l */
    public void mo388l() {
        int i = 0;
        Arrays.sort(this.f968d, 0, this.f969e, this.f875b);
        this.f1104a.mo364m(this.f969e);
        if (this.f876c) {
            while (i < this.f969e && !this.f1104a.mo363o()) {
                this.f1104a.accept((InterfaceC3071m3) this.f968d[i]);
                i++;
            }
        } else {
            while (i < this.f969e) {
                this.f1104a.accept((InterfaceC3071m3) this.f968d[i]);
                i++;
            }
        }
        this.f1104a.mo388l();
        this.f968d = null;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: m */
    public void mo364m(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f968d = new Object[(int) j];
    }
}
