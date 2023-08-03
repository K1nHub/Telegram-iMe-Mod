package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2819e;
import p033j$.util.function.InterfaceC2820f;
/* renamed from: j$.util.stream.g4 */
/* loaded from: classes2.dex */
final class C3045g4 extends AbstractC3063j4 implements InterfaceC2820f {

    /* renamed from: c */
    final double[] f1043c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3045g4(int i) {
        this.f1043c = new double[i];
    }

    @Override // p033j$.util.function.InterfaceC2820f
    public void accept(double d) {
        double[] dArr = this.f1043c;
        int i = this.f1060b;
        this.f1060b = i + 1;
        dArr[i] = d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p033j$.util.stream.AbstractC3063j4
    /* renamed from: b */
    public void mo403b(Object obj, long j) {
        InterfaceC2820f interfaceC2820f = (InterfaceC2820f) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2820f.accept(this.f1043c[i]);
        }
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public InterfaceC2820f mo105j(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return new C2819e(this, interfaceC2820f);
    }
}
