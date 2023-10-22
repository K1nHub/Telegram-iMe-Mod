package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.C2815e;
import p033j$.util.function.InterfaceC2816f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.o2 */
/* loaded from: classes2.dex */
public final class C3083o2 extends AbstractC3107s2 implements InterfaceC3054j3 {

    /* renamed from: h */
    private final double[] f1146h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3083o2(Spliterator spliterator, AbstractC3143y2 abstractC3143y2, double[] dArr) {
        super(spliterator, abstractC3143y2, dArr.length);
        this.f1146h = dArr;
    }

    C3083o2(C3083o2 c3083o2, Spliterator spliterator, long j, long j2) {
        super(c3083o2, spliterator, j, j2, c3083o2.f1146h.length);
        this.f1146h = c3083o2.f1146h;
    }

    @Override // p033j$.util.stream.AbstractC3107s2, p033j$.util.stream.InterfaceC3072m3
    public void accept(double d) {
        int i = this.f1188f;
        if (i >= this.f1189g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1188f));
        }
        double[] dArr = this.f1146h;
        this.f1188f = i + 1;
        dArr[i] = d;
    }

    @Override // p033j$.util.stream.AbstractC3107s2
    /* renamed from: b */
    AbstractC3107s2 mo390b(Spliterator spliterator, long j, long j2) {
        return new C3083o2(this, spliterator, j, j2);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Double d) {
        AbstractC3082o1.m422a(this, d);
    }

    @Override // p033j$.util.function.InterfaceC2816f
    /* renamed from: j */
    public InterfaceC2816f mo156j(InterfaceC2816f interfaceC2816f) {
        Objects.requireNonNull(interfaceC2816f);
        return new C2815e(this, interfaceC2816f);
    }
}
