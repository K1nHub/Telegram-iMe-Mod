package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.C2577e;
import p034j$.util.function.InterfaceC2578f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.o2 */
/* loaded from: classes2.dex */
public final class C2849o2 extends AbstractC2873s2 implements InterfaceC2820j3 {

    /* renamed from: h */
    private final double[] f1007h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2849o2(InterfaceC2611s interfaceC2611s, AbstractC2909y2 abstractC2909y2, double[] dArr) {
        super(interfaceC2611s, abstractC2909y2, dArr.length);
        this.f1007h = dArr;
    }

    C2849o2(C2849o2 c2849o2, InterfaceC2611s interfaceC2611s, long j, long j2) {
        super(c2849o2, interfaceC2611s, j, j2, c2849o2.f1007h.length);
        this.f1007h = c2849o2.f1007h;
    }

    @Override // p034j$.util.stream.AbstractC2873s2, p034j$.util.stream.InterfaceC2838m3
    public void accept(double d) {
        int i = this.f1049f;
        if (i >= this.f1050g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1049f));
        }
        double[] dArr = this.f1007h;
        this.f1049f = i + 1;
        dArr[i] = d;
    }

    @Override // p034j$.util.stream.AbstractC2873s2
    /* renamed from: b */
    AbstractC2873s2 mo342b(InterfaceC2611s interfaceC2611s, long j, long j2) {
        return new C2849o2(this, interfaceC2611s, j, j2);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Double d) {
        AbstractC2848o1.m374a(this, d);
    }

    @Override // p034j$.util.function.InterfaceC2578f
    /* renamed from: j */
    public InterfaceC2578f mo102j(InterfaceC2578f interfaceC2578f) {
        Objects.requireNonNull(interfaceC2578f);
        return new C2577e(this, interfaceC2578f);
    }
}
