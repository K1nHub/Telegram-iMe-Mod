package p033j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p033j$.util.function.C2825k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.d2 */
/* loaded from: classes2.dex */
public final class C3025d2 extends C3019c2 implements InterfaceC3102q1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3025d2(long j) {
        super(j);
    }

    @Override // p033j$.util.stream.InterfaceC3114s1
    /* renamed from: a */
    public /* bridge */ /* synthetic */ InterfaceC2859A1 mo323a() {
        mo323a();
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3102q1, p033j$.util.stream.InterfaceC3114s1
    /* renamed from: a */
    public InterfaceC3138w1 mo323a() {
        if (this.f981b >= this.f980a.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f981b), Integer.valueOf(this.f980a.length)));
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public /* synthetic */ void accept(double d) {
        AbstractC3090o1.m354f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public void accept(int i) {
        int i2 = this.f981b;
        int[] iArr = this.f980a;
        if (i2 >= iArr.length) {
            throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(this.f980a.length)));
        }
        this.f981b = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3, p033j$.util.stream.InterfaceC3074l3, p033j$.util.function.InterfaceC2831q
    public /* synthetic */ void accept(long j) {
        AbstractC3090o1.m355e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: k */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3090o1.m358b(this, num);
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: l */
    public InterfaceC2826l mo165l(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        return new C2825k(this, interfaceC2826l);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public void mo321m() {
        if (this.f981b < this.f980a.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f981b), Integer.valueOf(this.f980a.length)));
        }
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo297n(long j) {
        if (j != this.f980a.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(this.f980a.length)));
        }
        this.f981b = 0;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }

    @Override // p033j$.util.stream.C3019c2
    public String toString() {
        return String.format("IntFixedNodeBuilder[%d][%s]", Integer.valueOf(this.f980a.length - this.f981b), Arrays.toString(this.f980a));
    }
}
