package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2830p;
import p033j$.util.function.InterfaceC2831q;
/* renamed from: j$.util.stream.i4 */
/* loaded from: classes2.dex */
final class C3057i4 extends AbstractC3063j4 implements InterfaceC2831q {

    /* renamed from: c */
    final long[] f1052c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3057i4(int i) {
        this.f1052c = new long[i];
    }

    @Override // p033j$.util.function.InterfaceC2831q
    public void accept(long j) {
        long[] jArr = this.f1052c;
        int i = this.f1057b;
        this.f1057b = i + 1;
        jArr[i] = j;
    }

    @Override // p033j$.util.stream.AbstractC3063j4
    /* renamed from: b */
    public void mo385b(Object obj, long j) {
        InterfaceC2831q interfaceC2831q = (InterfaceC2831q) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2831q.accept(this.f1052c[i]);
        }
    }

    @Override // p033j$.util.function.InterfaceC2831q
    /* renamed from: f */
    public InterfaceC2831q mo140f(InterfaceC2831q interfaceC2831q) {
        Objects.requireNonNull(interfaceC2831q);
        return new C2830p(this, interfaceC2831q);
    }
}
