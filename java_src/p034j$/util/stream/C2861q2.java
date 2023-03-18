package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.C2588p;
import p034j$.util.function.InterfaceC2589q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.q2 */
/* loaded from: classes2.dex */
public final class C2861q2 extends AbstractC2873s2 implements InterfaceC2832l3 {

    /* renamed from: h */
    private final long[] f1028h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2861q2(InterfaceC2611s interfaceC2611s, AbstractC2909y2 abstractC2909y2, long[] jArr) {
        super(interfaceC2611s, abstractC2909y2, jArr.length);
        this.f1028h = jArr;
    }

    C2861q2(C2861q2 c2861q2, InterfaceC2611s interfaceC2611s, long j, long j2) {
        super(c2861q2, interfaceC2611s, j, j2, c2861q2.f1028h.length);
        this.f1028h = c2861q2.f1028h;
    }

    @Override // p034j$.util.stream.AbstractC2873s2, p034j$.util.stream.InterfaceC2838m3, p034j$.util.stream.InterfaceC2832l3, p034j$.util.function.InterfaceC2589q
    public void accept(long j) {
        int i = this.f1049f;
        if (i >= this.f1050g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1049f));
        }
        long[] jArr = this.f1028h;
        this.f1049f = i + 1;
        jArr[i] = j;
    }

    @Override // p034j$.util.stream.AbstractC2873s2
    /* renamed from: b */
    AbstractC2873s2 mo342b(InterfaceC2611s interfaceC2611s, long j, long j2) {
        return new C2861q2(this, interfaceC2611s, j, j2);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Long l) {
        AbstractC2848o1.m372c(this, l);
    }

    @Override // p034j$.util.function.InterfaceC2589q
    /* renamed from: f */
    public InterfaceC2589q mo155f(InterfaceC2589q interfaceC2589q) {
        Objects.requireNonNull(interfaceC2589q);
        return new C2588p(this, interfaceC2589q);
    }
}
