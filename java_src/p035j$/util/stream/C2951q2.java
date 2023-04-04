package p035j$.util.stream;

import java.util.Objects;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.C2678p;
import p035j$.util.function.InterfaceC2679q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.q2 */
/* loaded from: classes2.dex */
public final class C2951q2 extends AbstractC2963s2 implements InterfaceC2922l3 {

    /* renamed from: h */
    private final long[] f1034h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2951q2(InterfaceC2701s interfaceC2701s, AbstractC2999y2 abstractC2999y2, long[] jArr) {
        super(interfaceC2701s, abstractC2999y2, jArr.length);
        this.f1034h = jArr;
    }

    C2951q2(C2951q2 c2951q2, InterfaceC2701s interfaceC2701s, long j, long j2) {
        super(c2951q2, interfaceC2701s, j, j2, c2951q2.f1034h.length);
        this.f1034h = c2951q2.f1034h;
    }

    @Override // p035j$.util.stream.AbstractC2963s2, p035j$.util.stream.InterfaceC2928m3, p035j$.util.stream.InterfaceC2922l3, p035j$.util.function.InterfaceC2679q
    public void accept(long j) {
        int i = this.f1055f;
        if (i >= this.f1056g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1055f));
        }
        long[] jArr = this.f1034h;
        this.f1055f = i + 1;
        jArr[i] = j;
    }

    @Override // p035j$.util.stream.AbstractC2963s2
    /* renamed from: b */
    AbstractC2963s2 mo336b(InterfaceC2701s interfaceC2701s, long j, long j2) {
        return new C2951q2(this, interfaceC2701s, j, j2);
    }

    @Override // p035j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Long l) {
        AbstractC2938o1.m366c(this, l);
    }

    @Override // p035j$.util.function.InterfaceC2679q
    /* renamed from: f */
    public InterfaceC2679q mo149f(InterfaceC2679q interfaceC2679q) {
        Objects.requireNonNull(interfaceC2679q);
        return new C2678p(this, interfaceC2679q);
    }
}
