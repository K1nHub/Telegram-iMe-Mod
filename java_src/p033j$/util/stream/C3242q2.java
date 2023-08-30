package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.C2969p;
import p033j$.util.function.InterfaceC2970q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.q2 */
/* loaded from: classes2.dex */
public final class C3242q2 extends AbstractC3254s2 implements InterfaceC3213l3 {

    /* renamed from: h */
    private final long[] f1127h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3242q2(InterfaceC2992s interfaceC2992s, AbstractC3290y2 abstractC3290y2, long[] jArr) {
        super(interfaceC2992s, abstractC3290y2, jArr.length);
        this.f1127h = jArr;
    }

    C3242q2(C3242q2 c3242q2, InterfaceC2992s interfaceC2992s, long j, long j2) {
        super(c3242q2, interfaceC2992s, j, j2, c3242q2.f1127h.length);
        this.f1127h = c3242q2.f1127h;
    }

    @Override // p033j$.util.stream.AbstractC3254s2, p033j$.util.stream.InterfaceC3219m3, p033j$.util.stream.InterfaceC3213l3, p033j$.util.function.InterfaceC2970q
    public void accept(long j) {
        int i = this.f1148f;
        if (i >= this.f1149g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1148f));
        }
        long[] jArr = this.f1127h;
        this.f1148f = i + 1;
        jArr[i] = j;
    }

    @Override // p033j$.util.stream.AbstractC3254s2
    /* renamed from: b */
    AbstractC3254s2 mo345b(InterfaceC2992s interfaceC2992s, long j, long j2) {
        return new C3242q2(this, interfaceC2992s, j, j2);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Long l) {
        AbstractC3229o1.m375c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2970q
    /* renamed from: f */
    public InterfaceC2970q mo158f(InterfaceC2970q interfaceC2970q) {
        Objects.requireNonNull(interfaceC2970q);
        return new C2969p(this, interfaceC2970q);
    }
}
