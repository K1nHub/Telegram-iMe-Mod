package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.C2699k;
import p034j$.util.function.InterfaceC2700l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.p2 */
/* loaded from: classes2.dex */
public final class C2971p2 extends AbstractC2989s2 implements InterfaceC2942k3 {

    /* renamed from: h */
    private final int[] f1017h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2971p2(InterfaceC2727s interfaceC2727s, AbstractC3025y2 abstractC3025y2, int[] iArr) {
        super(interfaceC2727s, abstractC3025y2, iArr.length);
        this.f1017h = iArr;
    }

    C2971p2(C2971p2 c2971p2, InterfaceC2727s interfaceC2727s, long j, long j2) {
        super(c2971p2, interfaceC2727s, j, j2, c2971p2.f1017h.length);
        this.f1017h = c2971p2.f1017h;
    }

    @Override // p034j$.util.stream.AbstractC2989s2, p034j$.util.stream.InterfaceC2954m3
    public void accept(int i) {
        int i2 = this.f1053f;
        if (i2 >= this.f1054g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1053f));
        }
        int[] iArr = this.f1017h;
        this.f1053f = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p034j$.util.stream.AbstractC2989s2
    /* renamed from: b */
    AbstractC2989s2 mo327b(InterfaceC2727s interfaceC2727s, long j, long j2) {
        return new C2971p2(this, interfaceC2727s, j, j2);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2964o1.m358b(this, num);
    }

    @Override // p034j$.util.function.InterfaceC2700l
    /* renamed from: l */
    public InterfaceC2700l mo165l(InterfaceC2700l interfaceC2700l) {
        Objects.requireNonNull(interfaceC2700l);
        return new C2699k(this, interfaceC2700l);
    }
}
