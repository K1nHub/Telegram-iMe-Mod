package p034j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p034j$.util.function.C2583k;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2584l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.d2 */
/* loaded from: classes2.dex */
public final class C2783d2 extends C2777c2 implements InterfaceC2860q1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2783d2(long j) {
        super(j);
    }

    @Override // p034j$.util.stream.InterfaceC2872s1
    /* renamed from: a */
    public /* bridge */ /* synthetic */ InterfaceC2617A1 mo338a() {
        mo338a();
        return this;
    }

    @Override // p034j$.util.stream.InterfaceC2860q1, p034j$.util.stream.InterfaceC2872s1
    /* renamed from: a */
    public InterfaceC2896w1 mo338a() {
        if (this.f895b >= this.f894a.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f895b), Integer.valueOf(this.f894a.length)));
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    public /* synthetic */ void accept(double d) {
        AbstractC2848o1.m369f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    public void accept(int i) {
        int i2 = this.f895b;
        int[] iArr = this.f894a;
        if (i2 >= iArr.length) {
            throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(this.f894a.length)));
        }
        this.f895b = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3, p034j$.util.stream.InterfaceC2832l3, p034j$.util.function.InterfaceC2589q
    public /* synthetic */ void accept(long j) {
        AbstractC2848o1.m370e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: k */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2848o1.m373b(this, num);
    }

    @Override // p034j$.util.function.InterfaceC2584l
    /* renamed from: l */
    public InterfaceC2584l mo180l(InterfaceC2584l interfaceC2584l) {
        Objects.requireNonNull(interfaceC2584l);
        return new C2583k(this, interfaceC2584l);
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: m */
    public void mo336m() {
        if (this.f895b < this.f894a.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f895b), Integer.valueOf(this.f894a.length)));
        }
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: n */
    public void mo312n(long j) {
        if (j != this.f894a.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(this.f894a.length)));
        }
        this.f895b = 0;
    }

    @Override // p034j$.util.stream.InterfaceC2838m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }

    @Override // p034j$.util.stream.C2777c2
    public String toString() {
        return String.format("IntFixedNodeBuilder[%d][%s]", Integer.valueOf(this.f894a.length - this.f895b), Arrays.toString(this.f894a));
    }
}
