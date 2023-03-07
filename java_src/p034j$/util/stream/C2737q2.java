package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.C2464p;
import p034j$.util.function.InterfaceC2465q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.q2 */
/* loaded from: classes2.dex */
public final class C2737q2 extends AbstractC2749s2 implements InterfaceC2708l3 {

    /* renamed from: h */
    private final long[] f1023h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2737q2(InterfaceC2487s interfaceC2487s, AbstractC2785y2 abstractC2785y2, long[] jArr) {
        super(interfaceC2487s, abstractC2785y2, jArr.length);
        this.f1023h = jArr;
    }

    C2737q2(C2737q2 c2737q2, InterfaceC2487s interfaceC2487s, long j, long j2) {
        super(c2737q2, interfaceC2487s, j, j2, c2737q2.f1023h.length);
        this.f1023h = c2737q2.f1023h;
    }

    @Override // p034j$.util.stream.AbstractC2749s2, p034j$.util.stream.InterfaceC2714m3, p034j$.util.stream.InterfaceC2708l3, p034j$.util.function.InterfaceC2465q
    public void accept(long j) {
        int i = this.f1044f;
        if (i >= this.f1045g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1044f));
        }
        long[] jArr = this.f1023h;
        this.f1044f = i + 1;
        jArr[i] = j;
    }

    @Override // p034j$.util.stream.AbstractC2749s2
    /* renamed from: b */
    AbstractC2749s2 mo342b(InterfaceC2487s interfaceC2487s, long j, long j2) {
        return new C2737q2(this, interfaceC2487s, j, j2);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Long l) {
        AbstractC2724o1.m372c(this, l);
    }

    @Override // p034j$.util.function.InterfaceC2465q
    /* renamed from: f */
    public InterfaceC2465q mo155f(InterfaceC2465q interfaceC2465q) {
        Objects.requireNonNull(interfaceC2465q);
        return new C2464p(this, interfaceC2465q);
    }
}
