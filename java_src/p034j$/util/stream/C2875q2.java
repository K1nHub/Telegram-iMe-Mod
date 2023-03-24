package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.C2602p;
import p034j$.util.function.InterfaceC2603q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.q2 */
/* loaded from: classes2.dex */
public final class C2875q2 extends AbstractC2887s2 implements InterfaceC2846l3 {

    /* renamed from: h */
    private final long[] f1029h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2875q2(InterfaceC2625s interfaceC2625s, AbstractC2923y2 abstractC2923y2, long[] jArr) {
        super(interfaceC2625s, abstractC2923y2, jArr.length);
        this.f1029h = jArr;
    }

    C2875q2(C2875q2 c2875q2, InterfaceC2625s interfaceC2625s, long j, long j2) {
        super(c2875q2, interfaceC2625s, j, j2, c2875q2.f1029h.length);
        this.f1029h = c2875q2.f1029h;
    }

    @Override // p034j$.util.stream.AbstractC2887s2, p034j$.util.stream.InterfaceC2852m3, p034j$.util.stream.InterfaceC2846l3, p034j$.util.function.InterfaceC2603q
    public void accept(long j) {
        int i = this.f1050f;
        if (i >= this.f1051g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1050f));
        }
        long[] jArr = this.f1029h;
        this.f1050f = i + 1;
        jArr[i] = j;
    }

    @Override // p034j$.util.stream.AbstractC2887s2
    /* renamed from: b */
    AbstractC2887s2 mo341b(InterfaceC2625s interfaceC2625s, long j, long j2) {
        return new C2875q2(this, interfaceC2625s, j, j2);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Long l) {
        AbstractC2862o1.m371c(this, l);
    }

    @Override // p034j$.util.function.InterfaceC2603q
    /* renamed from: f */
    public InterfaceC2603q mo154f(InterfaceC2603q interfaceC2603q) {
        Objects.requireNonNull(interfaceC2603q);
        return new C2602p(this, interfaceC2603q);
    }
}
