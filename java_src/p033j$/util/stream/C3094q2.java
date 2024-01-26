package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.C2824o;
import p033j$.util.function.InterfaceC2825p;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.q2 */
/* loaded from: classes2.dex */
public final class C3094q2 extends AbstractC3106s2 implements InterfaceC3065l3 {

    /* renamed from: h */
    private final long[] f1167h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3094q2(Spliterator spliterator, AbstractC3142y2 abstractC3142y2, long[] jArr) {
        super(spliterator, abstractC3142y2, jArr.length);
        this.f1167h = jArr;
    }

    C3094q2(C3094q2 c3094q2, Spliterator spliterator, long j, long j2) {
        super(c3094q2, spliterator, j, j2, c3094q2.f1167h.length);
        this.f1167h = c3094q2.f1167h;
    }

    @Override // p033j$.util.stream.AbstractC3106s2, p033j$.util.stream.InterfaceC3071m3, p033j$.util.stream.InterfaceC3065l3, p033j$.util.function.InterfaceC2825p
    public void accept(long j) {
        int i = this.f1188f;
        if (i >= this.f1189g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1188f));
        }
        long[] jArr = this.f1167h;
        this.f1188f = i + 1;
        jArr[i] = j;
    }

    @Override // p033j$.util.stream.AbstractC3106s2
    /* renamed from: b */
    AbstractC3106s2 mo394b(Spliterator spliterator, long j, long j2) {
        return new C3094q2(this, spliterator, j, j2);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Long l) {
        AbstractC3081o1.m424c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2825p
    /* renamed from: f */
    public InterfaceC2825p mo216f(InterfaceC2825p interfaceC2825p) {
        Objects.requireNonNull(interfaceC2825p);
        return new C2824o(this, interfaceC2825p);
    }
}
