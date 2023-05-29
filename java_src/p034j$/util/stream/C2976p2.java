package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.C2704k;
import p034j$.util.function.InterfaceC2705l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.p2 */
/* loaded from: classes2.dex */
public final class C2976p2 extends AbstractC2994s2 implements InterfaceC2947k3 {

    /* renamed from: h */
    private final int[] f1017h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2976p2(InterfaceC2732s interfaceC2732s, AbstractC3030y2 abstractC3030y2, int[] iArr) {
        super(interfaceC2732s, abstractC3030y2, iArr.length);
        this.f1017h = iArr;
    }

    C2976p2(C2976p2 c2976p2, InterfaceC2732s interfaceC2732s, long j, long j2) {
        super(c2976p2, interfaceC2732s, j, j2, c2976p2.f1017h.length);
        this.f1017h = c2976p2.f1017h;
    }

    @Override // p034j$.util.stream.AbstractC2994s2, p034j$.util.stream.InterfaceC2959m3
    public void accept(int i) {
        int i2 = this.f1053f;
        if (i2 >= this.f1054g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1053f));
        }
        int[] iArr = this.f1017h;
        this.f1053f = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p034j$.util.stream.AbstractC2994s2
    /* renamed from: b */
    AbstractC2994s2 mo327b(InterfaceC2732s interfaceC2732s, long j, long j2) {
        return new C2976p2(this, interfaceC2732s, j, j2);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2969o1.m358b(this, num);
    }

    @Override // p034j$.util.function.InterfaceC2705l
    /* renamed from: l */
    public InterfaceC2705l mo165l(InterfaceC2705l interfaceC2705l) {
        Objects.requireNonNull(interfaceC2705l);
        return new C2704k(this, interfaceC2705l);
    }
}
