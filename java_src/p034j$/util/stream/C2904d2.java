package p034j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p034j$.util.function.C2704k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2705l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.d2 */
/* loaded from: classes2.dex */
public final class C2904d2 extends C2898c2 implements InterfaceC2981q1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2904d2(long j) {
        super(j);
    }

    @Override // p034j$.util.stream.InterfaceC2993s1
    /* renamed from: a */
    public /* bridge */ /* synthetic */ InterfaceC2738A1 mo323a() {
        mo323a();
        return this;
    }

    @Override // p034j$.util.stream.InterfaceC2981q1, p034j$.util.stream.InterfaceC2993s1
    /* renamed from: a */
    public InterfaceC3017w1 mo323a() {
        if (this.f899b >= this.f898a.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f899b), Integer.valueOf(this.f898a.length)));
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    public /* synthetic */ void accept(double d) {
        AbstractC2969o1.m354f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    public void accept(int i) {
        int i2 = this.f899b;
        int[] iArr = this.f898a;
        if (i2 >= iArr.length) {
            throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(this.f898a.length)));
        }
        this.f899b = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3, p034j$.util.stream.InterfaceC2953l3, p034j$.util.function.InterfaceC2710q
    public /* synthetic */ void accept(long j) {
        AbstractC2969o1.m355e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: k */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2969o1.m358b(this, num);
    }

    @Override // p034j$.util.function.InterfaceC2705l
    /* renamed from: l */
    public InterfaceC2705l mo165l(InterfaceC2705l interfaceC2705l) {
        Objects.requireNonNull(interfaceC2705l);
        return new C2704k(this, interfaceC2705l);
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: m */
    public void mo321m() {
        if (this.f899b < this.f898a.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f899b), Integer.valueOf(this.f898a.length)));
        }
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: n */
    public void mo297n(long j) {
        if (j != this.f898a.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(this.f898a.length)));
        }
        this.f899b = 0;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }

    @Override // p034j$.util.stream.C2898c2
    public String toString() {
        return String.format("IntFixedNodeBuilder[%d][%s]", Integer.valueOf(this.f898a.length - this.f899b), Arrays.toString(this.f898a));
    }
}
