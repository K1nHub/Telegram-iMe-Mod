package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.function.C2673k;
import p035j$.util.function.InterfaceC2674l;
/* renamed from: j$.util.stream.h4 */
/* loaded from: classes2.dex */
final class C2899h4 extends AbstractC2911j4 implements InterfaceC2674l {

    /* renamed from: c */
    final int[] f965c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2899h4(int i) {
        this.f965c = new int[i];
    }

    @Override // p035j$.util.function.InterfaceC2674l
    public void accept(int i) {
        int[] iArr = this.f965c;
        int i2 = this.f977b;
        this.f977b = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p035j$.util.stream.AbstractC2911j4
    /* renamed from: b */
    public void mo394b(Object obj, long j) {
        InterfaceC2674l interfaceC2674l = (InterfaceC2674l) obj;
        for (int i = 0; i < j; i++) {
            interfaceC2674l.accept(this.f965c[i]);
        }
    }

    @Override // p035j$.util.function.InterfaceC2674l
    /* renamed from: l */
    public InterfaceC2674l mo174l(InterfaceC2674l interfaceC2674l) {
        Objects.requireNonNull(interfaceC2674l);
        return new C2673k(this, interfaceC2674l);
    }
}
