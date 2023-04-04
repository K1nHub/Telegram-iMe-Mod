package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.C2673k;
import p035j$.util.function.InterfaceC2674l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.p2 */
/* loaded from: classes2.dex */
public final class C2945p2 extends AbstractC2963s2 implements InterfaceC2916k3 {

    /* renamed from: h */
    private final int[] f1019h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2945p2(InterfaceC2701s interfaceC2701s, AbstractC2999y2 abstractC2999y2, int[] iArr) {
        super(interfaceC2701s, abstractC2999y2, iArr.length);
        this.f1019h = iArr;
    }

    C2945p2(C2945p2 c2945p2, InterfaceC2701s interfaceC2701s, long j, long j2) {
        super(c2945p2, interfaceC2701s, j, j2, c2945p2.f1019h.length);
        this.f1019h = c2945p2.f1019h;
    }

    @Override // p035j$.util.stream.AbstractC2963s2, p035j$.util.stream.InterfaceC2928m3
    public void accept(int i) {
        int i2 = this.f1055f;
        if (i2 >= this.f1056g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1055f));
        }
        int[] iArr = this.f1019h;
        this.f1055f = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p035j$.util.stream.AbstractC2963s2
    /* renamed from: b */
    AbstractC2963s2 mo336b(InterfaceC2701s interfaceC2701s, long j, long j2) {
        return new C2945p2(this, interfaceC2701s, j, j2);
    }

    @Override // p035j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2938o1.m367b(this, num);
    }

    @Override // p035j$.util.function.InterfaceC2674l
    /* renamed from: l */
    public InterfaceC2674l mo174l(InterfaceC2674l interfaceC2674l) {
        Objects.requireNonNull(interfaceC2674l);
        return new C2673k(this, interfaceC2674l);
    }
}
