package p034j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p034j$.util.function.C2698e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2699f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U1 */
/* loaded from: classes2.dex */
public final class C2854U1 extends C2849T1 implements InterfaceC2975p1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2854U1(long j) {
        super(j);
    }

    @Override // p034j$.util.stream.InterfaceC2993s1
    /* renamed from: a */
    public /* bridge */ /* synthetic */ InterfaceC2738A1 mo323a() {
        mo323a();
        return this;
    }

    @Override // p034j$.util.stream.InterfaceC2975p1, p034j$.util.stream.InterfaceC2993s1
    /* renamed from: a */
    public InterfaceC3005u1 mo323a() {
        if (this.f844b >= this.f843a.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f844b), Integer.valueOf(this.f843a.length)));
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    public void accept(double d) {
        int i = this.f844b;
        double[] dArr = this.f843a;
        if (i >= dArr.length) {
            throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(this.f843a.length)));
        }
        this.f844b = i + 1;
        dArr[i] = d;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    public /* synthetic */ void accept(int i) {
        AbstractC2969o1.m356d(this);
        throw null;
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

    @Override // p034j$.util.function.InterfaceC2699f
    /* renamed from: j */
    public InterfaceC2699f mo87j(InterfaceC2699f interfaceC2699f) {
        Objects.requireNonNull(interfaceC2699f);
        return new C2698e(this, interfaceC2699f);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: l */
    public /* synthetic */ void accept(Double d) {
        AbstractC2969o1.m359a(this, d);
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: m */
    public void mo321m() {
        if (this.f844b < this.f843a.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f844b), Integer.valueOf(this.f843a.length)));
        }
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: n */
    public void mo297n(long j) {
        if (j != this.f843a.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(this.f843a.length)));
        }
        this.f844b = 0;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }

    @Override // p034j$.util.stream.C2849T1
    public String toString() {
        return String.format("DoubleFixedNodeBuilder[%d][%s]", Integer.valueOf(this.f843a.length - this.f844b), Arrays.toString(this.f843a));
    }
}
