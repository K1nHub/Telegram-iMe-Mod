package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.C2583k;
import p034j$.util.function.InterfaceC2584l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.p2 */
/* loaded from: classes2.dex */
public final class C2855p2 extends AbstractC2873s2 implements InterfaceC2826k3 {

    /* renamed from: h */
    private final int[] f1013h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2855p2(InterfaceC2611s interfaceC2611s, AbstractC2909y2 abstractC2909y2, int[] iArr) {
        super(interfaceC2611s, abstractC2909y2, iArr.length);
        this.f1013h = iArr;
    }

    C2855p2(C2855p2 c2855p2, InterfaceC2611s interfaceC2611s, long j, long j2) {
        super(c2855p2, interfaceC2611s, j, j2, c2855p2.f1013h.length);
        this.f1013h = c2855p2.f1013h;
    }

    @Override // p034j$.util.stream.AbstractC2873s2, p034j$.util.stream.InterfaceC2838m3
    public void accept(int i) {
        int i2 = this.f1049f;
        if (i2 >= this.f1050g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1049f));
        }
        int[] iArr = this.f1013h;
        this.f1049f = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p034j$.util.stream.AbstractC2873s2
    /* renamed from: b */
    AbstractC2873s2 mo342b(InterfaceC2611s interfaceC2611s, long j, long j2) {
        return new C2855p2(this, interfaceC2611s, j, j2);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2848o1.m373b(this, num);
    }

    @Override // p034j$.util.function.InterfaceC2584l
    /* renamed from: l */
    public InterfaceC2584l mo180l(InterfaceC2584l interfaceC2584l) {
        Objects.requireNonNull(interfaceC2584l);
        return new C2583k(this, interfaceC2584l);
    }
}
