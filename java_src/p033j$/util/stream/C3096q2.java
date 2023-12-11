package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.C2826o;
import p033j$.util.function.InterfaceC2827p;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.q2 */
/* loaded from: classes2.dex */
public final class C3096q2 extends AbstractC3108s2 implements InterfaceC3067l3 {

    /* renamed from: h */
    private final long[] f1167h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3096q2(Spliterator spliterator, AbstractC3144y2 abstractC3144y2, long[] jArr) {
        super(spliterator, abstractC3144y2, jArr.length);
        this.f1167h = jArr;
    }

    C3096q2(C3096q2 c3096q2, Spliterator spliterator, long j, long j2) {
        super(c3096q2, spliterator, j, j2, c3096q2.f1167h.length);
        this.f1167h = c3096q2.f1167h;
    }

    @Override // p033j$.util.stream.AbstractC3108s2, p033j$.util.stream.InterfaceC3073m3, p033j$.util.stream.InterfaceC3067l3, p033j$.util.function.InterfaceC2827p
    public void accept(long j) {
        int i = this.f1188f;
        if (i >= this.f1189g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1188f));
        }
        long[] jArr = this.f1167h;
        this.f1188f = i + 1;
        jArr[i] = j;
    }

    @Override // p033j$.util.stream.AbstractC3108s2
    /* renamed from: b */
    AbstractC3108s2 mo391b(Spliterator spliterator, long j, long j2) {
        return new C3096q2(this, spliterator, j, j2);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Long l) {
        AbstractC3083o1.m421c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2827p
    /* renamed from: f */
    public InterfaceC2827p mo213f(InterfaceC2827p interfaceC2827p) {
        Objects.requireNonNull(interfaceC2827p);
        return new C2826o(this, interfaceC2827p);
    }
}
