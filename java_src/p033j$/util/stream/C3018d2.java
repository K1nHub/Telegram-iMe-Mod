package p033j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p033j$.util.function.C2822k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2823l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.d2 */
/* loaded from: classes2.dex */
public final class C3018d2 extends C3012c2 implements InterfaceC3095q1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3018d2(long j) {
        super(j);
    }

    @Override // p033j$.util.stream.InterfaceC3107s1
    /* renamed from: a */
    public /* bridge */ /* synthetic */ InterfaceC2852A1 mo387a() {
        mo387a();
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3095q1, p033j$.util.stream.InterfaceC3107s1
    /* renamed from: a */
    public InterfaceC3131w1 mo387a() {
        if (this.f1034b >= this.f1033a.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f1034b), Integer.valueOf(this.f1033a.length)));
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    public /* synthetic */ void accept(double d) {
        AbstractC3083o1.m418f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    public void accept(int i) {
        int i2 = this.f1034b;
        int[] iArr = this.f1033a;
        if (i2 >= iArr.length) {
            throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(this.f1033a.length)));
        }
        this.f1034b = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3, p033j$.util.stream.InterfaceC3067l3, p033j$.util.function.InterfaceC2827p
    public /* synthetic */ void accept(long j) {
        AbstractC3083o1.m419e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.InterfaceC2823l
    /* renamed from: k */
    public InterfaceC2823l mo235k(InterfaceC2823l interfaceC2823l) {
        Objects.requireNonNull(interfaceC2823l);
        return new C2822k(this, interfaceC2823l);
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: l */
    public void mo385l() {
        if (this.f1034b < this.f1033a.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f1034b), Integer.valueOf(this.f1033a.length)));
        }
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: m */
    public void mo361m(long j) {
        if (j != this.f1033a.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(this.f1033a.length)));
        }
        this.f1034b = 0;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: o */
    public /* synthetic */ boolean mo360o() {
        return false;
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: r */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3083o1.m422b(this, num);
    }

    @Override // p033j$.util.stream.C3012c2
    public String toString() {
        return String.format("IntFixedNodeBuilder[%d][%s]", Integer.valueOf(this.f1033a.length - this.f1034b), Arrays.toString(this.f1033a));
    }
}
