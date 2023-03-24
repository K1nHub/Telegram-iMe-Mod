package p034j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p034j$.util.function.C2591e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2592f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U1 */
/* loaded from: classes2.dex */
public final class C2747U1 extends C2742T1 implements InterfaceC2868p1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2747U1(long j) {
        super(j);
    }

    @Override // p034j$.util.stream.InterfaceC2886s1
    /* renamed from: a */
    public /* bridge */ /* synthetic */ InterfaceC2631A1 mo337a() {
        mo337a();
        return this;
    }

    @Override // p034j$.util.stream.InterfaceC2868p1, p034j$.util.stream.InterfaceC2886s1
    /* renamed from: a */
    public InterfaceC2898u1 mo337a() {
        if (this.f841b >= this.f840a.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f841b), Integer.valueOf(this.f840a.length)));
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    public void accept(double d) {
        int i = this.f841b;
        double[] dArr = this.f840a;
        if (i >= dArr.length) {
            throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(this.f840a.length)));
        }
        this.f841b = i + 1;
        dArr[i] = d;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    public /* synthetic */ void accept(int i) {
        AbstractC2862o1.m370d(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3, p034j$.util.stream.InterfaceC2846l3, p034j$.util.function.InterfaceC2603q
    public /* synthetic */ void accept(long j) {
        AbstractC2862o1.m369e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.InterfaceC2592f
    /* renamed from: j */
    public InterfaceC2592f mo101j(InterfaceC2592f interfaceC2592f) {
        Objects.requireNonNull(interfaceC2592f);
        return new C2591e(this, interfaceC2592f);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: l */
    public /* synthetic */ void accept(Double d) {
        AbstractC2862o1.m373a(this, d);
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: m */
    public void mo335m() {
        if (this.f841b < this.f840a.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f841b), Integer.valueOf(this.f840a.length)));
        }
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public void mo311n(long j) {
        if (j != this.f840a.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(this.f840a.length)));
        }
        this.f841b = 0;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: o */
    public /* synthetic */ boolean mo310o() {
        return false;
    }

    @Override // p034j$.util.stream.C2742T1
    public String toString() {
        return String.format("DoubleFixedNodeBuilder[%d][%s]", Integer.valueOf(this.f840a.length - this.f841b), Arrays.toString(this.f840a));
    }
}
