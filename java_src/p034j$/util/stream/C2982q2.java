package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.C2709p;
import p034j$.util.function.InterfaceC2710q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.q2 */
/* loaded from: classes2.dex */
public final class C2982q2 extends AbstractC2994s2 implements InterfaceC2953l3 {

    /* renamed from: h */
    private final long[] f1032h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2982q2(InterfaceC2732s interfaceC2732s, AbstractC3030y2 abstractC3030y2, long[] jArr) {
        super(interfaceC2732s, abstractC3030y2, jArr.length);
        this.f1032h = jArr;
    }

    C2982q2(C2982q2 c2982q2, InterfaceC2732s interfaceC2732s, long j, long j2) {
        super(c2982q2, interfaceC2732s, j, j2, c2982q2.f1032h.length);
        this.f1032h = c2982q2.f1032h;
    }

    @Override // p034j$.util.stream.AbstractC2994s2, p034j$.util.stream.InterfaceC2959m3, p034j$.util.stream.InterfaceC2953l3, p034j$.util.function.InterfaceC2710q
    public void accept(long j) {
        int i = this.f1053f;
        if (i >= this.f1054g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1053f));
        }
        long[] jArr = this.f1032h;
        this.f1053f = i + 1;
        jArr[i] = j;
    }

    @Override // p034j$.util.stream.AbstractC2994s2
    /* renamed from: b */
    AbstractC2994s2 mo327b(InterfaceC2732s interfaceC2732s, long j, long j2) {
        return new C2982q2(this, interfaceC2732s, j, j2);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Long l) {
        AbstractC2969o1.m357c(this, l);
    }

    @Override // p034j$.util.function.InterfaceC2710q
    /* renamed from: f */
    public InterfaceC2710q mo140f(InterfaceC2710q interfaceC2710q) {
        Objects.requireNonNull(interfaceC2710q);
        return new C2709p(this, interfaceC2710q);
    }
}
