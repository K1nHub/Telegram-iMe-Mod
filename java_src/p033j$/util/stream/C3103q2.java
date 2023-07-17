package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.C2830p;
import p033j$.util.function.InterfaceC2831q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.q2 */
/* loaded from: classes2.dex */
public final class C3103q2 extends AbstractC3115s2 implements InterfaceC3074l3 {

    /* renamed from: h */
    private final long[] f1114h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3103q2(InterfaceC2853s interfaceC2853s, AbstractC3151y2 abstractC3151y2, long[] jArr) {
        super(interfaceC2853s, abstractC3151y2, jArr.length);
        this.f1114h = jArr;
    }

    C3103q2(C3103q2 c3103q2, InterfaceC2853s interfaceC2853s, long j, long j2) {
        super(c3103q2, interfaceC2853s, j, j2, c3103q2.f1114h.length);
        this.f1114h = c3103q2.f1114h;
    }

    @Override // p033j$.util.stream.AbstractC3115s2, p033j$.util.stream.InterfaceC3080m3, p033j$.util.stream.InterfaceC3074l3, p033j$.util.function.InterfaceC2831q
    public void accept(long j) {
        int i = this.f1135f;
        if (i >= this.f1136g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1135f));
        }
        long[] jArr = this.f1114h;
        this.f1135f = i + 1;
        jArr[i] = j;
    }

    @Override // p033j$.util.stream.AbstractC3115s2
    /* renamed from: b */
    AbstractC3115s2 mo327b(InterfaceC2853s interfaceC2853s, long j, long j2) {
        return new C3103q2(this, interfaceC2853s, j, j2);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Long l) {
        AbstractC3090o1.m357c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2831q
    /* renamed from: f */
    public InterfaceC2831q mo140f(InterfaceC2831q interfaceC2831q) {
        Objects.requireNonNull(interfaceC2831q);
        return new C2830p(this, interfaceC2831q);
    }
}
