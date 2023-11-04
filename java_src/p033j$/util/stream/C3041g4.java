package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2819e;
import p033j$.util.function.InterfaceC2820f;
/* renamed from: j$.util.stream.g4 */
/* loaded from: classes2.dex */
final class C3041g4 extends AbstractC3059j4 implements InterfaceC2820f {

    /* renamed from: c */
    final double[] f1093c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3041g4(int i) {
        this.f1093c = new double[i];
    }

    @Override // p033j$.util.function.InterfaceC2820f
    public void accept(double d) {
        double[] dArr = this.f1093c;
        int i = this.f1110b;
        this.f1110b = i + 1;
        dArr[i] = d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3059j4
    /* renamed from: b */
    public void mo449b(Object obj, long j) {
        InterfaceC2820f interfaceC2820f = (InterfaceC2820f) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2820f.accept(this.f1093c[i]);
        }
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public InterfaceC2820f mo158j(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return new C2819e(this, interfaceC2820f);
    }
}
