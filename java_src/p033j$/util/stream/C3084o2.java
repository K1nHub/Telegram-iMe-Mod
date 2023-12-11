package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.C2816e;
import p033j$.util.function.InterfaceC2817f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.o2 */
/* loaded from: classes2.dex */
public final class C3084o2 extends AbstractC3108s2 implements InterfaceC3055j3 {

    /* renamed from: h */
    private final double[] f1146h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3084o2(Spliterator spliterator, AbstractC3144y2 abstractC3144y2, double[] dArr) {
        super(spliterator, abstractC3144y2, dArr.length);
        this.f1146h = dArr;
    }

    C3084o2(C3084o2 c3084o2, Spliterator spliterator, long j, long j2) {
        super(c3084o2, spliterator, j, j2, c3084o2.f1146h.length);
        this.f1146h = c3084o2.f1146h;
    }

    @Override // p033j$.util.stream.AbstractC3108s2, p033j$.util.stream.InterfaceC3073m3
    public void accept(double d) {
        int i = this.f1188f;
        if (i >= this.f1189g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1188f));
        }
        double[] dArr = this.f1146h;
        this.f1188f = i + 1;
        dArr[i] = d;
    }

    @Override // p033j$.util.stream.AbstractC3108s2
    /* renamed from: b */
    AbstractC3108s2 mo391b(Spliterator spliterator, long j, long j2) {
        return new C3084o2(this, spliterator, j, j2);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Double d) {
        AbstractC3083o1.m423a(this, d);
    }

    @Override // p033j$.util.function.InterfaceC2817f
    /* renamed from: j */
    public InterfaceC2817f mo158j(InterfaceC2817f interfaceC2817f) {
        Objects.requireNonNull(interfaceC2817f);
        return new C2816e(this, interfaceC2817f);
    }
}
