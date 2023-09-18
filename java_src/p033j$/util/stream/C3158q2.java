package p033j$.util.stream;

import java.util.Objects;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.C2885p;
import p033j$.util.function.InterfaceC2886q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.q2 */
/* loaded from: classes2.dex */
public final class C3158q2 extends AbstractC3170s2 implements InterfaceC3129l3 {

    /* renamed from: h */
    private final long[] f1118h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3158q2(InterfaceC2908s interfaceC2908s, AbstractC3206y2 abstractC3206y2, long[] jArr) {
        super(interfaceC2908s, abstractC3206y2, jArr.length);
        this.f1118h = jArr;
    }

    C3158q2(C3158q2 c3158q2, InterfaceC2908s interfaceC2908s, long j, long j2) {
        super(c3158q2, interfaceC2908s, j, j2, c3158q2.f1118h.length);
        this.f1118h = c3158q2.f1118h;
    }

    @Override // p033j$.util.stream.AbstractC3170s2, p033j$.util.stream.InterfaceC3135m3, p033j$.util.stream.InterfaceC3129l3, p033j$.util.function.InterfaceC2886q
    public void accept(long j) {
        int i = this.f1139f;
        if (i >= this.f1140g) {
            throw new IndexOutOfBoundsException(Integer.toString(this.f1139f));
        }
        long[] jArr = this.f1118h;
        this.f1139f = i + 1;
        jArr[i] = j;
    }

    @Override // p033j$.util.stream.AbstractC3170s2
    /* renamed from: b */
    AbstractC3170s2 mo345b(InterfaceC2908s interfaceC2908s, long j, long j2) {
        return new C3158q2(this, interfaceC2908s, j, j2);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: c */
    public /* synthetic */ void accept(Long l) {
        AbstractC3145o1.m375c(this, l);
    }

    @Override // p033j$.util.function.InterfaceC2886q
    /* renamed from: f */
    public InterfaceC2886q mo158f(InterfaceC2886q interfaceC2886q) {
        Objects.requireNonNull(interfaceC2886q);
        return new C2885p(this, interfaceC2886q);
    }
}
