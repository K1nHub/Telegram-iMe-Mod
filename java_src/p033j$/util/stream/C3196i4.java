package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2969p;
import p033j$.util.function.InterfaceC2970q;
/* renamed from: j$.util.stream.i4 */
/* loaded from: classes2.dex */
final class C3196i4 extends AbstractC3202j4 implements InterfaceC2970q {

    /* renamed from: c */
    final long[] f1065c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3196i4(int i) {
        this.f1065c = new long[i];
    }

    @Override // p033j$.util.function.InterfaceC2970q
    public void accept(long j) {
        long[] jArr = this.f1065c;
        int i = this.f1070b;
        this.f1070b = i + 1;
        jArr[i] = j;
    }

    @Override // p033j$.util.stream.AbstractC3202j4
    /* renamed from: b */
    public void mo403b(Object obj, long j) {
        InterfaceC2970q interfaceC2970q = (InterfaceC2970q) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2970q.accept(this.f1065c[i]);
        }
    }

    @Override // p033j$.util.function.InterfaceC2970q
    /* renamed from: f */
    public InterfaceC2970q mo158f(InterfaceC2970q interfaceC2970q) {
        Objects.requireNonNull(interfaceC2970q);
        return new C2969p(this, interfaceC2970q);
    }
}
