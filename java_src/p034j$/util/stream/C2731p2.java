package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.C2459k;
import p034j$.util.function.InterfaceC2460l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.p2 */
/* loaded from: classes2.dex */
public final class C2731p2 extends AbstractC2749s2 implements InterfaceC2702k3 {

    /* renamed from: h */
    private final int[] f1008h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2731p2(InterfaceC2487s interfaceC2487s, AbstractC2785y2 abstractC2785y2, int[] iArr) {
        super(interfaceC2487s, abstractC2785y2, iArr.length);
        this.f1008h = iArr;
    }

    C2731p2(C2731p2 c2731p2, InterfaceC2487s interfaceC2487s, long j, long j2) {
        super(c2731p2, interfaceC2487s, j, j2, c2731p2.f1008h.length);
        this.f1008h = c2731p2.f1008h;
    }

    @Override // p034j$.util.stream.AbstractC2749s2, p034j$.util.stream.InterfaceC2714m3
    public void accept(int i) {
        int i2 = this.f1044f;
        if (i2 >= this.f1045g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1044f));
        }
        int[] iArr = this.f1008h;
        this.f1044f = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p034j$.util.stream.AbstractC2749s2
    /* renamed from: b */
    AbstractC2749s2 mo342b(InterfaceC2487s interfaceC2487s, long j, long j2) {
        return new C2731p2(this, interfaceC2487s, j, j2);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2724o1.m373b(this, num);
    }

    @Override // p034j$.util.function.InterfaceC2460l
    /* renamed from: l */
    public InterfaceC2460l mo180l(InterfaceC2460l interfaceC2460l) {
        Objects.requireNonNull(interfaceC2460l);
        return new C2459k(this, interfaceC2460l);
    }
}
