package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.C2958e;
import p033j$.util.function.InterfaceC2959f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.o2 */
/* loaded from: classes2.dex */
public final class C3230o2 extends AbstractC3254s2 implements InterfaceC3201j3 {

    /* renamed from: h */
    private final double[] f1106h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3230o2(InterfaceC2992s interfaceC2992s, AbstractC3290y2 abstractC3290y2, double[] dArr) {
        super(interfaceC2992s, abstractC3290y2, dArr.length);
        this.f1106h = dArr;
    }

    C3230o2(C3230o2 c3230o2, InterfaceC2992s interfaceC2992s, long j, long j2) {
        super(c3230o2, interfaceC2992s, j, j2, c3230o2.f1106h.length);
        this.f1106h = c3230o2.f1106h;
    }

    @Override // p033j$.util.stream.AbstractC3254s2, p033j$.util.stream.InterfaceC3219m3
    public void accept(double d) {
        int i = this.f1148f;
        if (i >= this.f1149g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1148f));
        }
        double[] dArr = this.f1106h;
        this.f1148f = i + 1;
        dArr[i] = d;
    }

    @Override // p033j$.util.stream.AbstractC3254s2
    /* renamed from: b */
    AbstractC3254s2 mo345b(InterfaceC2992s interfaceC2992s, long j, long j2) {
        return new C3230o2(this, interfaceC2992s, j, j2);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Double d) {
        AbstractC3229o1.m377a(this, d);
    }

    @Override // p033j$.util.function.InterfaceC2959f
    /* renamed from: j */
    public InterfaceC2959f mo105j(InterfaceC2959f interfaceC2959f) {
        Objects.requireNonNull(interfaceC2959f);
        return new C2958e(this, interfaceC2959f);
    }
}
