package p034j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p034j$.util.function.C2709p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2710q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.m2 */
/* loaded from: classes2.dex */
public final class C2958m2 extends C2952l2 implements InterfaceC2987r1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2958m2(long j) {
        super(j);
    }

    @Override // p034j$.util.stream.InterfaceC2993s1
    /* renamed from: a */
    public /* bridge */ /* synthetic */ InterfaceC2738A1 mo323a() {
        mo323a();
        return this;
    }

    @Override // p034j$.util.stream.InterfaceC2987r1, p034j$.util.stream.InterfaceC2993s1
    /* renamed from: a */
    public InterfaceC3029y1 mo323a() {
        if (this.f992b >= this.f991a.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f992b), Integer.valueOf(this.f991a.length)));
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    public /* synthetic */ void accept(double d) {
        AbstractC2969o1.m354f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    public /* synthetic */ void accept(int i) {
        AbstractC2969o1.m356d(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3, p034j$.util.stream.InterfaceC2953l3, p034j$.util.function.InterfaceC2710q
    public void accept(long j) {
        int i = this.f992b;
        long[] jArr = this.f991a;
        if (i >= jArr.length) {
            throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(this.f991a.length)));
        }
        this.f992b = i + 1;
        jArr[i] = j;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.InterfaceC2710q
    /* renamed from: f */
    public InterfaceC2710q mo140f(InterfaceC2710q interfaceC2710q) {
        Objects.requireNonNull(interfaceC2710q);
        return new C2709p(this, interfaceC2710q);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: l */
    public /* synthetic */ void accept(Long l) {
        AbstractC2969o1.m357c(this, l);
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: m */
    public void mo321m() {
        if (this.f992b < this.f991a.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f992b), Integer.valueOf(this.f991a.length)));
        }
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: n */
    public void mo297n(long j) {
        if (j != this.f991a.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(this.f991a.length)));
        }
        this.f992b = 0;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }

    @Override // p034j$.util.stream.C2952l2
    public String toString() {
        return String.format("LongFixedNodeBuilder[%d][%s]", Integer.valueOf(this.f991a.length - this.f992b), Arrays.toString(this.f991a));
    }
}
