package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2820k;
import p033j$.util.function.InterfaceC2821l;
/* renamed from: j$.util.stream.h4 */
/* loaded from: classes2.dex */
final class C3042h4 extends AbstractC3054j4 implements InterfaceC2821l {

    /* renamed from: c */
    final int[] f1098c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3042h4(int i) {
        this.f1098c = new int[i];
    }

    @Override // p033j$.util.function.InterfaceC2821l
    public void accept(int i) {
        int[] iArr = this.f1098c;
        int i2 = this.f1110b;
        this.f1110b = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p033j$.util.stream.AbstractC3054j4
    /* renamed from: b */
    public void mo452b(Object obj, long j) {
        InterfaceC2821l interfaceC2821l = (InterfaceC2821l) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2821l.accept(this.f1098c[i]);
        }
    }

    @Override // p033j$.util.function.InterfaceC2821l
    /* renamed from: k */
    public InterfaceC2821l mo238k(InterfaceC2821l interfaceC2821l) {
        Objects.requireNonNull(interfaceC2821l);
        return new C2820k(this, interfaceC2821l);
    }
}
