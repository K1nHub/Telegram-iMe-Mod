package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.C2704p;
import p034j$.util.function.InterfaceC2705q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.q2 */
/* loaded from: classes2.dex */
public final class C2977q2 extends AbstractC2989s2 implements InterfaceC2948l3 {

    /* renamed from: h */
    private final long[] f1032h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2977q2(InterfaceC2727s interfaceC2727s, AbstractC3025y2 abstractC3025y2, long[] jArr) {
        super(interfaceC2727s, abstractC3025y2, jArr.length);
        this.f1032h = jArr;
    }

    C2977q2(C2977q2 c2977q2, InterfaceC2727s interfaceC2727s, long j, long j2) {
        super(c2977q2, interfaceC2727s, j, j2, c2977q2.f1032h.length);
        this.f1032h = c2977q2.f1032h;
    }

    @Override // p034j$.util.stream.AbstractC2989s2, p034j$.util.stream.InterfaceC2954m3, p034j$.util.stream.InterfaceC2948l3, p034j$.util.function.InterfaceC2705q
    public void accept(long j) {
        int i = this.f1053f;
        if (i >= this.f1054g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1053f));
        }
        long[] jArr = this.f1032h;
        this.f1053f = i + 1;
        jArr[i] = j;
    }

    @Override // p034j$.util.stream.AbstractC2989s2
    /* renamed from: b */
    AbstractC2989s2 mo327b(InterfaceC2727s interfaceC2727s, long j, long j2) {
        return new C2977q2(this, interfaceC2727s, j, j2);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Long l) {
        AbstractC2964o1.m357c(this, l);
    }

    @Override // p034j$.util.function.InterfaceC2705q
    /* renamed from: f */
    public InterfaceC2705q mo140f(InterfaceC2705q interfaceC2705q) {
        Objects.requireNonNull(interfaceC2705q);
        return new C2704p(this, interfaceC2705q);
    }
}
