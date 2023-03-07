package p034j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p034j$.util.function.C2453e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2454f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U1 */
/* loaded from: classes2.dex */
public final class C2609U1 extends C2604T1 implements InterfaceC2730p1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2609U1(long j) {
        super(j);
    }

    @Override // p034j$.util.stream.InterfaceC2730p1, p034j$.util.stream.InterfaceC2748s1
    /* renamed from: a */
    public /* bridge */ /* synthetic */ InterfaceC2493A1 mo338a() {
        mo338a();
        return this;
    }

    @Override // p034j$.util.stream.InterfaceC2730p1, p034j$.util.stream.InterfaceC2748s1
    /* renamed from: a */
    public InterfaceC2760u1 mo338a() {
        if (this.f835b >= this.f834a.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f835b), Integer.valueOf(this.f834a.length)));
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    public void accept(double d) {
        int i = this.f835b;
        double[] dArr = this.f834a;
        if (i >= dArr.length) {
            throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(this.f834a.length)));
        }
        this.f835b = i + 1;
        dArr[i] = d;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    public /* synthetic */ void accept(int i) {
        AbstractC2724o1.m371d(this);
        throw null;
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

    @Override // p034j$.util.function.InterfaceC2454f
    /* renamed from: j */
    public InterfaceC2454f mo102j(InterfaceC2454f interfaceC2454f) {
        Objects.requireNonNull(interfaceC2454f);
        return new C2453e(this, interfaceC2454f);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: l */
    public /* synthetic */ void accept(Double d) {
        AbstractC2724o1.m374a(this, d);
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: m */
    public void mo336m() {
        if (this.f835b < this.f834a.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f835b), Integer.valueOf(this.f834a.length)));
        }
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        if (j != this.f834a.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(this.f834a.length)));
        }
        this.f835b = 0;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }

    @Override // p034j$.util.stream.C2604T1
    public String toString() {
        return String.format("DoubleFixedNodeBuilder[%d][%s]", Integer.valueOf(this.f834a.length - this.f835b), Arrays.toString(this.f834a));
    }
}
