package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2825k;
import p033j$.util.function.InterfaceC2826l;
/* renamed from: j$.util.stream.h4 */
/* loaded from: classes2.dex */
final class C3047h4 extends AbstractC3059j4 implements InterfaceC2826l {

    /* renamed from: c */
    final int[] f1098c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3047h4(int i) {
        this.f1098c = new int[i];
    }

    @Override // p033j$.util.function.InterfaceC2826l
    public void accept(int i) {
        int[] iArr = this.f1098c;
        int i2 = this.f1110b;
        this.f1110b = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p033j$.util.stream.AbstractC3059j4
    /* renamed from: b */
    public void mo449b(Object obj, long j) {
        InterfaceC2826l interfaceC2826l = (InterfaceC2826l) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2826l.accept(this.f1098c[i]);
        }
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: k */
    public InterfaceC2826l mo235k(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        return new C2825k(this, interfaceC2826l);
    }
}
