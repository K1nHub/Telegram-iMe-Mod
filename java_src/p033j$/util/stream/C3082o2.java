package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.C2814e;
import p033j$.util.function.InterfaceC2815f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.o2 */
/* loaded from: classes2.dex */
public final class C3082o2 extends AbstractC3106s2 implements InterfaceC3053j3 {

    /* renamed from: h */
    private final double[] f1146h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3082o2(Spliterator spliterator, AbstractC3142y2 abstractC3142y2, double[] dArr) {
        super(spliterator, abstractC3142y2, dArr.length);
        this.f1146h = dArr;
    }

    C3082o2(C3082o2 c3082o2, Spliterator spliterator, long j, long j2) {
        super(c3082o2, spliterator, j, j2, c3082o2.f1146h.length);
        this.f1146h = c3082o2.f1146h;
    }

    @Override // p033j$.util.stream.AbstractC3106s2, p033j$.util.stream.InterfaceC3071m3
    public void accept(double d) {
        int i = this.f1188f;
        if (i >= this.f1189g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1188f));
        }
        double[] dArr = this.f1146h;
        this.f1188f = i + 1;
        dArr[i] = d;
    }

    @Override // p033j$.util.stream.AbstractC3106s2
    /* renamed from: b */
    AbstractC3106s2 mo394b(Spliterator spliterator, long j, long j2) {
        return new C3082o2(this, spliterator, j, j2);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Double d) {
        AbstractC3081o1.m426a(this, d);
    }

    @Override // p033j$.util.function.InterfaceC2815f
    /* renamed from: j */
    public InterfaceC2815f mo161j(InterfaceC2815f interfaceC2815f) {
        Objects.requireNonNull(interfaceC2815f);
        return new C2814e(this, interfaceC2815f);
    }
}
