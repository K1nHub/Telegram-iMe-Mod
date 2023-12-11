package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2822k;
import p033j$.util.function.InterfaceC2823l;
/* renamed from: j$.util.stream.h4 */
/* loaded from: classes2.dex */
final class C3044h4 extends AbstractC3056j4 implements InterfaceC2823l {

    /* renamed from: c */
    final int[] f1098c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3044h4(int i) {
        this.f1098c = new int[i];
    }

    @Override // p033j$.util.function.InterfaceC2823l
    public void accept(int i) {
        int[] iArr = this.f1098c;
        int i2 = this.f1110b;
        this.f1110b = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p033j$.util.stream.AbstractC3056j4
    /* renamed from: b */
    public void mo449b(Object obj, long j) {
        InterfaceC2823l interfaceC2823l = (InterfaceC2823l) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2823l.accept(this.f1098c[i]);
        }
    }

    @Override // p033j$.util.function.InterfaceC2823l
    /* renamed from: k */
    public InterfaceC2823l mo235k(InterfaceC2823l interfaceC2823l) {
        Objects.requireNonNull(interfaceC2823l);
        return new C2822k(this, interfaceC2823l);
    }
}
