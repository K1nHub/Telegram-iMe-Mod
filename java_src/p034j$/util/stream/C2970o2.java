package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.C2698e;
import p034j$.util.function.InterfaceC2699f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.o2 */
/* loaded from: classes2.dex */
public final class C2970o2 extends AbstractC2994s2 implements InterfaceC2941j3 {

    /* renamed from: h */
    private final double[] f1011h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2970o2(InterfaceC2732s interfaceC2732s, AbstractC3030y2 abstractC3030y2, double[] dArr) {
        super(interfaceC2732s, abstractC3030y2, dArr.length);
        this.f1011h = dArr;
    }

    C2970o2(C2970o2 c2970o2, InterfaceC2732s interfaceC2732s, long j, long j2) {
        super(c2970o2, interfaceC2732s, j, j2, c2970o2.f1011h.length);
        this.f1011h = c2970o2.f1011h;
    }

    @Override // p034j$.util.stream.AbstractC2994s2, p034j$.util.stream.InterfaceC2959m3
    public void accept(double d) {
        int i = this.f1053f;
        if (i >= this.f1054g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1053f));
        }
        double[] dArr = this.f1011h;
        this.f1053f = i + 1;
        dArr[i] = d;
    }

    @Override // p034j$.util.stream.AbstractC2994s2
    /* renamed from: b */
    AbstractC2994s2 mo327b(InterfaceC2732s interfaceC2732s, long j, long j2) {
        return new C2970o2(this, interfaceC2732s, j, j2);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Double d) {
        AbstractC2969o1.m359a(this, d);
    }

    @Override // p034j$.util.function.InterfaceC2699f
    /* renamed from: j */
    public InterfaceC2699f mo87j(InterfaceC2699f interfaceC2699f) {
        Objects.requireNonNull(interfaceC2699f);
        return new C2698e(this, interfaceC2699f);
    }
}
