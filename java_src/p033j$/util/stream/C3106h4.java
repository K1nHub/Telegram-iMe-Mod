package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.function.C2880k;
import p033j$.util.function.InterfaceC2881l;
/* renamed from: j$.util.stream.h4 */
/* loaded from: classes2.dex */
final class C3106h4 extends AbstractC3118j4 implements InterfaceC2881l {

    /* renamed from: c */
    final int[] f1049c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3106h4(int i) {
        this.f1049c = new int[i];
    }

    @Override // p033j$.util.function.InterfaceC2881l
    public void accept(int i) {
        int[] iArr = this.f1049c;
        int i2 = this.f1061b;
        this.f1061b = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p033j$.util.stream.AbstractC3118j4
    /* renamed from: b */
    public void mo403b(Object obj, long j) {
        InterfaceC2881l interfaceC2881l = (InterfaceC2881l) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2881l.accept(this.f1049c[i]);
        }
    }

    @Override // p033j$.util.function.InterfaceC2881l
    /* renamed from: l */
    public InterfaceC2881l mo183l(InterfaceC2881l interfaceC2881l) {
        Objects.requireNonNull(interfaceC2881l);
        return new C2880k(this, interfaceC2881l);
    }
}
