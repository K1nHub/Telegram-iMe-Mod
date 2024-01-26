package p033j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p033j$.util.function.C2820k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2821l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.d2 */
/* loaded from: classes2.dex */
public final class C3016d2 extends C3010c2 implements InterfaceC3093q1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3016d2(long j) {
        super(j);
    }

    @Override // p033j$.util.stream.InterfaceC3105s1
    /* renamed from: a */
    public /* bridge */ /* synthetic */ InterfaceC2850A1 mo390a() {
        mo390a();
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3093q1, p033j$.util.stream.InterfaceC3105s1
    /* renamed from: a */
    public InterfaceC3129w1 mo390a() {
        if (this.f1034b >= this.f1033a.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f1034b), Integer.valueOf(this.f1033a.length)));
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    public /* synthetic */ void accept(double d) {
        AbstractC3081o1.m421f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    public void accept(int i) {
        int i2 = this.f1034b;
        int[] iArr = this.f1033a;
        if (i2 >= iArr.length) {
            throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(this.f1033a.length)));
        }
        this.f1034b = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3, p033j$.util.stream.InterfaceC3065l3, p033j$.util.function.InterfaceC2825p
    public /* synthetic */ void accept(long j) {
        AbstractC3081o1.m422e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.InterfaceC2821l
    /* renamed from: k */
    public InterfaceC2821l mo238k(InterfaceC2821l interfaceC2821l) {
        Objects.requireNonNull(interfaceC2821l);
        return new C2820k(this, interfaceC2821l);
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: l */
    public void mo388l() {
        if (this.f1034b < this.f1033a.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f1034b), Integer.valueOf(this.f1033a.length)));
        }
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: m */
    public void mo364m(long j) {
        if (j != this.f1033a.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(this.f1033a.length)));
        }
        this.f1034b = 0;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: o */
    public /* synthetic */ boolean mo363o() {
        return false;
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: r */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3081o1.m425b(this, num);
    }

    @Override // p033j$.util.stream.C3010c2
    public String toString() {
        return String.format("IntFixedNodeBuilder[%d][%s]", Integer.valueOf(this.f1033a.length - this.f1034b), Arrays.toString(this.f1033a));
    }
}
