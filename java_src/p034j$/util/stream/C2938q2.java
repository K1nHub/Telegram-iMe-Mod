package p034j$.util.stream;

import java.util.Objects;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.C2665p;
import p034j$.util.function.InterfaceC2666q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.q2 */
/* loaded from: classes2.dex */
public final class C2938q2 extends AbstractC2950s2 implements InterfaceC2909l3 {

    /* renamed from: h */
    private final long[] f1029h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2938q2(InterfaceC2688s interfaceC2688s, AbstractC2986y2 abstractC2986y2, long[] jArr) {
        super(interfaceC2688s, abstractC2986y2, jArr.length);
        this.f1029h = jArr;
    }

    C2938q2(C2938q2 c2938q2, InterfaceC2688s interfaceC2688s, long j, long j2) {
        super(c2938q2, interfaceC2688s, j, j2, c2938q2.f1029h.length);
        this.f1029h = c2938q2.f1029h;
    }

    @Override // p034j$.util.stream.AbstractC2950s2, p034j$.util.stream.InterfaceC2915m3, p034j$.util.stream.InterfaceC2909l3, p034j$.util.function.InterfaceC2666q
    public void accept(long j) {
        int i = this.f1050f;
        if (i >= this.f1051g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1050f));
        }
        long[] jArr = this.f1029h;
        this.f1050f = i + 1;
        jArr[i] = j;
    }

    @Override // p034j$.util.stream.AbstractC2950s2
    /* renamed from: b */
    AbstractC2950s2 mo322b(InterfaceC2688s interfaceC2688s, long j, long j2) {
        return new C2938q2(this, interfaceC2688s, j, j2);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Long l) {
        AbstractC2925o1.m352c(this, l);
    }

    @Override // p034j$.util.function.InterfaceC2666q
    /* renamed from: f */
    public InterfaceC2666q mo135f(InterfaceC2666q interfaceC2666q) {
        Objects.requireNonNull(interfaceC2666q);
        return new C2665p(this, interfaceC2666q);
    }
}
