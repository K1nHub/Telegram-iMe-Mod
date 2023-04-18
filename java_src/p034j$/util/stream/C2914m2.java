package p034j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p034j$.util.function.C2665p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2666q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.m2 */
/* loaded from: classes2.dex */
public final class C2914m2 extends C2908l2 implements InterfaceC2943r1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2914m2(long j) {
        super(j);
    }

    @Override // p034j$.util.stream.InterfaceC2949s1
    /* renamed from: a */
    public /* bridge */ /* synthetic */ InterfaceC2694A1 mo318a() {
        mo318a();
        return this;
    }

    @Override // p034j$.util.stream.InterfaceC2943r1, p034j$.util.stream.InterfaceC2949s1
    /* renamed from: a */
    public InterfaceC2985y1 mo318a() {
        if (this.f989b >= this.f988a.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f989b), Integer.valueOf(this.f988a.length)));
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    public /* synthetic */ void accept(double d) {
        AbstractC2925o1.m349f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    public /* synthetic */ void accept(int i) {
        AbstractC2925o1.m351d(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3, p034j$.util.stream.InterfaceC2909l3, p034j$.util.function.InterfaceC2666q
    public void accept(long j) {
        int i = this.f989b;
        long[] jArr = this.f988a;
        if (i >= jArr.length) {
            throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(this.f988a.length)));
        }
        this.f989b = i + 1;
        jArr[i] = j;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.InterfaceC2666q
    /* renamed from: f */
    public InterfaceC2666q mo135f(InterfaceC2666q interfaceC2666q) {
        Objects.requireNonNull(interfaceC2666q);
        return new C2665p(this, interfaceC2666q);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: l */
    public /* synthetic */ void accept(Long l) {
        AbstractC2925o1.m352c(this, l);
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: m */
    public void mo316m() {
        if (this.f989b < this.f988a.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f989b), Integer.valueOf(this.f988a.length)));
        }
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: n */
    public void mo292n(long j) {
        if (j != this.f988a.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(this.f988a.length)));
        }
        this.f989b = 0;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: o */
    public /* synthetic */ boolean mo291o() {
        return false;
    }

    @Override // p034j$.util.stream.C2908l2
    public String toString() {
        return String.format("LongFixedNodeBuilder[%d][%s]", Integer.valueOf(this.f988a.length - this.f989b), Arrays.toString(this.f988a));
    }
}
