package p034j$.util.stream;

import java.util.Arrays;
import java.util.Comparator;
/* renamed from: j$.util.stream.R3 */
/* loaded from: classes2.dex */
final class C2720R3 extends AbstractC2649F3 {

    /* renamed from: d */
    private Object[] f829d;

    /* renamed from: e */
    private int f830e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2720R3(InterfaceC2838m3 interfaceC2838m3, Comparator comparator) {
        super(interfaceC2838m3, comparator);
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        Object[] objArr = this.f829d;
        int i = this.f830e;
        this.f830e = i + 1;
        objArr[i] = obj;
    }

    @Override // p034j$.util.stream.AbstractC2814i3, p034j$.util.stream.InterfaceC2838m3
    /* renamed from: m */
    public void mo336m() {
        int i = 0;
        Arrays.sort(this.f829d, 0, this.f830e, this.f736b);
        this.f965a.mo312n(this.f830e);
        if (this.f737c) {
            while (i < this.f830e && !this.f965a.mo311o()) {
                this.f965a.accept((InterfaceC2838m3) this.f829d[i]);
                i++;
            }
        } else {
            while (i < this.f830e) {
                this.f965a.accept((InterfaceC2838m3) this.f829d[i]);
                i++;
            }
        }
        this.f965a.mo336m();
        this.f829d = null;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: n */
    public void mo312n(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f829d = new Object[(int) j];
    }
}
