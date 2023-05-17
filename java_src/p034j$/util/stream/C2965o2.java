package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.C2693e;
import p034j$.util.function.InterfaceC2694f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.o2 */
/* loaded from: classes2.dex */
public final class C2965o2 extends AbstractC2989s2 implements InterfaceC2936j3 {

    /* renamed from: h */
    private final double[] f1011h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2965o2(InterfaceC2727s interfaceC2727s, AbstractC3025y2 abstractC3025y2, double[] dArr) {
        super(interfaceC2727s, abstractC3025y2, dArr.length);
        this.f1011h = dArr;
    }

    C2965o2(C2965o2 c2965o2, InterfaceC2727s interfaceC2727s, long j, long j2) {
        super(c2965o2, interfaceC2727s, j, j2, c2965o2.f1011h.length);
        this.f1011h = c2965o2.f1011h;
    }

    @Override // p034j$.util.stream.AbstractC2989s2, p034j$.util.stream.InterfaceC2954m3
    public void accept(double d) {
        int i = this.f1053f;
        if (i >= this.f1054g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1053f));
        }
        double[] dArr = this.f1011h;
        this.f1053f = i + 1;
        dArr[i] = d;
    }

    @Override // p034j$.util.stream.AbstractC2989s2
    /* renamed from: b */
    AbstractC2989s2 mo327b(InterfaceC2727s interfaceC2727s, long j, long j2) {
        return new C2965o2(this, interfaceC2727s, j, j2);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Double d) {
        AbstractC2964o1.m359a(this, d);
    }

    @Override // p034j$.util.function.InterfaceC2694f
    /* renamed from: j */
    public InterfaceC2694f mo87j(InterfaceC2694f interfaceC2694f) {
        Objects.requireNonNull(interfaceC2694f);
        return new C2693e(this, interfaceC2694f);
    }
}
