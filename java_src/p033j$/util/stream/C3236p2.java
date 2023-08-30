package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.C2964k;
import p033j$.util.function.InterfaceC2965l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.p2 */
/* loaded from: classes2.dex */
public final class C3236p2 extends AbstractC3254s2 implements InterfaceC3207k3 {

    /* renamed from: h */
    private final int[] f1112h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3236p2(InterfaceC2992s interfaceC2992s, AbstractC3290y2 abstractC3290y2, int[] iArr) {
        super(interfaceC2992s, abstractC3290y2, iArr.length);
        this.f1112h = iArr;
    }

    C3236p2(C3236p2 c3236p2, InterfaceC2992s interfaceC2992s, long j, long j2) {
        super(c3236p2, interfaceC2992s, j, j2, c3236p2.f1112h.length);
        this.f1112h = c3236p2.f1112h;
    }

    @Override // p033j$.util.stream.AbstractC3254s2, p033j$.util.stream.InterfaceC3219m3
    public void accept(int i) {
        int i2 = this.f1148f;
        if (i2 >= this.f1149g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1148f));
        }
        int[] iArr = this.f1112h;
        this.f1148f = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p033j$.util.stream.AbstractC3254s2
    /* renamed from: b */
    AbstractC3254s2 mo345b(InterfaceC2992s interfaceC2992s, long j, long j2) {
        return new C3236p2(this, interfaceC2992s, j, j2);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3229o1.m376b(this, num);
    }

    @Override // p033j$.util.function.InterfaceC2965l
    /* renamed from: l */
    public InterfaceC2965l mo183l(InterfaceC2965l interfaceC2965l) {
        Objects.requireNonNull(interfaceC2965l);
        return new C2964k(this, interfaceC2965l);
    }
}
