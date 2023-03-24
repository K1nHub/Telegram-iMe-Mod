package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.C2597k;
import p034j$.util.function.InterfaceC2598l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.p2 */
/* loaded from: classes2.dex */
public final class C2869p2 extends AbstractC2887s2 implements InterfaceC2840k3 {

    /* renamed from: h */
    private final int[] f1014h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2869p2(InterfaceC2625s interfaceC2625s, AbstractC2923y2 abstractC2923y2, int[] iArr) {
        super(interfaceC2625s, abstractC2923y2, iArr.length);
        this.f1014h = iArr;
    }

    C2869p2(C2869p2 c2869p2, InterfaceC2625s interfaceC2625s, long j, long j2) {
        super(c2869p2, interfaceC2625s, j, j2, c2869p2.f1014h.length);
        this.f1014h = c2869p2.f1014h;
    }

    @Override // p034j$.util.stream.AbstractC2887s2, p034j$.util.stream.InterfaceC2852m3
    public void accept(int i) {
        int i2 = this.f1050f;
        if (i2 >= this.f1051g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1050f));
        }
        int[] iArr = this.f1014h;
        this.f1050f = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p034j$.util.stream.AbstractC2887s2
    /* renamed from: b */
    AbstractC2887s2 mo341b(InterfaceC2625s interfaceC2625s, long j, long j2) {
        return new C2869p2(this, interfaceC2625s, j, j2);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2862o1.m372b(this, num);
    }

    @Override // p034j$.util.function.InterfaceC2598l
    /* renamed from: l */
    public InterfaceC2598l mo179l(InterfaceC2598l interfaceC2598l) {
        Objects.requireNonNull(interfaceC2598l);
        return new C2597k(this, interfaceC2598l);
    }
}
