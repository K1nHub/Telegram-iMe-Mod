package p034j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p034j$.util.function.C2459k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2460l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.d2 */
/* loaded from: classes2.dex */
public final class C2659d2 extends C2653c2 implements InterfaceC2736q1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2659d2(long j) {
        super(j);
    }

    @Override // p034j$.util.stream.InterfaceC2736q1, p034j$.util.stream.InterfaceC2748s1
    /* renamed from: a */
    public /* bridge */ /* synthetic */ InterfaceC2493A1 mo338a() {
        mo338a();
        return this;
    }

    @Override // p034j$.util.stream.InterfaceC2736q1, p034j$.util.stream.InterfaceC2748s1
    /* renamed from: a */
    public InterfaceC2772w1 mo338a() {
        if (this.f890b >= this.f889a.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f890b), Integer.valueOf(this.f889a.length)));
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    public /* synthetic */ void accept(double d) {
        AbstractC2724o1.m369f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    public void accept(int i) {
        int i2 = this.f890b;
        int[] iArr = this.f889a;
        if (i2 >= iArr.length) {
            throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(this.f889a.length)));
        }
        this.f890b = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3, p034j$.util.stream.InterfaceC2708l3, p034j$.util.function.InterfaceC2465q
    public /* synthetic */ void accept(long j) {
        AbstractC2724o1.m370e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: k */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2724o1.m373b(this, num);
    }

    @Override // p034j$.util.function.InterfaceC2460l
    /* renamed from: l */
    public InterfaceC2460l mo180l(InterfaceC2460l interfaceC2460l) {
        Objects.requireNonNull(interfaceC2460l);
        return new C2459k(this, interfaceC2460l);
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: m */
    public void mo336m() {
        if (this.f890b < this.f889a.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f890b), Integer.valueOf(this.f889a.length)));
        }
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        if (j != this.f889a.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(this.f889a.length)));
        }
        this.f890b = 0;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }

    @Override // p034j$.util.stream.C2653c2
    public String toString() {
        return String.format("IntFixedNodeBuilder[%d][%s]", Integer.valueOf(this.f889a.length - this.f890b), Arrays.toString(this.f889a));
    }
}
