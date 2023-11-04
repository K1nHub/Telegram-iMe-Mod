package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.Spliterator;
import p033j$.util.function.C2829o;
import p033j$.util.function.InterfaceC2830p;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.q2 */
/* loaded from: classes2.dex */
public final class C3099q2 extends AbstractC3111s2 implements InterfaceC3070l3 {

    /* renamed from: h */
    private final long[] f1167h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3099q2(Spliterator spliterator, AbstractC3147y2 abstractC3147y2, long[] jArr) {
        super(spliterator, abstractC3147y2, jArr.length);
        this.f1167h = jArr;
    }

    C3099q2(C3099q2 c3099q2, Spliterator spliterator, long j, long j2) {
        super(c3099q2, spliterator, j, j2, c3099q2.f1167h.length);
        this.f1167h = c3099q2.f1167h;
    }

    @Override // p033j$.util.stream.AbstractC3111s2, p033j$.util.stream.InterfaceC3076m3, p033j$.util.stream.InterfaceC3070l3, p033j$.util.function.InterfaceC2830p
    public void accept(long j) {
        int i = this.f1188f;
        if (i >= this.f1189g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1188f));
        }
        long[] jArr = this.f1167h;
        this.f1188f = i + 1;
        jArr[i] = j;
    }

    @Override // p033j$.util.stream.AbstractC3111s2
    /* renamed from: b */
    AbstractC3111s2 mo391b(Spliterator spliterator, long j, long j2) {
        return new C3099q2(this, spliterator, j, j2);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Long l) {
        AbstractC3086o1.m421c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2830p
    /* renamed from: f */
    public InterfaceC2830p mo213f(InterfaceC2830p interfaceC2830p) {
        Objects.requireNonNull(interfaceC2830p);
        return new C2829o(this, interfaceC2830p);
    }
}
