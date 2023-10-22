package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2821k;
import p033j$.util.function.InterfaceC2822l;
/* renamed from: j$.util.stream.h4 */
/* loaded from: classes2.dex */
final class C3043h4 extends AbstractC3055j4 implements InterfaceC2822l {

    /* renamed from: c */
    final int[] f1098c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3043h4(int i) {
        this.f1098c = new int[i];
    }

    @Override // p033j$.util.function.InterfaceC2822l
    public void accept(int i) {
        int[] iArr = this.f1098c;
        int i2 = this.f1110b;
        this.f1110b = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p033j$.util.stream.AbstractC3055j4
    /* renamed from: b */
    public void mo448b(Object obj, long j) {
        InterfaceC2822l interfaceC2822l = (InterfaceC2822l) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2822l.accept(this.f1098c[i]);
        }
    }

    @Override // p033j$.util.function.InterfaceC2822l
    /* renamed from: k */
    public InterfaceC2822l mo234k(InterfaceC2822l interfaceC2822l) {
        Objects.requireNonNull(interfaceC2822l);
        return new C2821k(this, interfaceC2822l);
    }
}
