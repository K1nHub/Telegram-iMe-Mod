package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.C2825o;
import p033j$.util.function.InterfaceC2826p;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.q2 */
/* loaded from: classes2.dex */
public final class C3095q2 extends AbstractC3107s2 implements InterfaceC3066l3 {

    /* renamed from: h */
    private final long[] f1167h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3095q2(Spliterator spliterator, AbstractC3143y2 abstractC3143y2, long[] jArr) {
        super(spliterator, abstractC3143y2, jArr.length);
        this.f1167h = jArr;
    }

    C3095q2(C3095q2 c3095q2, Spliterator spliterator, long j, long j2) {
        super(c3095q2, spliterator, j, j2, c3095q2.f1167h.length);
        this.f1167h = c3095q2.f1167h;
    }

    @Override // p033j$.util.stream.AbstractC3107s2, p033j$.util.stream.InterfaceC3072m3, p033j$.util.stream.InterfaceC3066l3, p033j$.util.function.InterfaceC2826p
    public void accept(long j) {
        int i = this.f1188f;
        if (i >= this.f1189g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1188f));
        }
        long[] jArr = this.f1167h;
        this.f1188f = i + 1;
        jArr[i] = j;
    }

    @Override // p033j$.util.stream.AbstractC3107s2
    /* renamed from: b */
    AbstractC3107s2 mo390b(Spliterator spliterator, long j, long j2) {
        return new C3095q2(this, spliterator, j, j2);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Long l) {
        AbstractC3082o1.m420c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2826p
    /* renamed from: f */
    public InterfaceC2826p mo212f(InterfaceC2826p interfaceC2826p) {
        Objects.requireNonNull(interfaceC2826p);
        return new C2825o(this, interfaceC2826p);
    }
}
