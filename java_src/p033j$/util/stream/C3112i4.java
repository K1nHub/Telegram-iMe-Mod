package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2885p;
import p033j$.util.function.InterfaceC2886q;
/* renamed from: j$.util.stream.i4 */
/* loaded from: classes2.dex */
final class C3112i4 extends AbstractC3118j4 implements InterfaceC2886q {

    /* renamed from: c */
    final long[] f1056c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3112i4(int i) {
        this.f1056c = new long[i];
    }

    @Override // p033j$.util.function.InterfaceC2886q
    public void accept(long j) {
        long[] jArr = this.f1056c;
        int i = this.f1061b;
        this.f1061b = i + 1;
        jArr[i] = j;
    }

    @Override // p033j$.util.stream.AbstractC3118j4
    /* renamed from: b */
    public void mo403b(Object obj, long j) {
        InterfaceC2886q interfaceC2886q = (InterfaceC2886q) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2886q.accept(this.f1056c[i]);
        }
    }

    @Override // p033j$.util.function.InterfaceC2886q
    /* renamed from: f */
    public InterfaceC2886q mo158f(InterfaceC2886q interfaceC2886q) {
        Objects.requireNonNull(interfaceC2886q);
        return new C2885p(this, interfaceC2886q);
    }
}
