package p034j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p034j$.util.function.C2654e;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2655f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U1 */
/* loaded from: classes2.dex */
public final class C2810U1 extends C2805T1 implements InterfaceC2931p1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2810U1(long j) {
        super(j);
    }

    @Override // p034j$.util.stream.InterfaceC2949s1
    /* renamed from: a */
    public /* bridge */ /* synthetic */ InterfaceC2694A1 mo318a() {
        mo318a();
        return this;
    }

    @Override // p034j$.util.stream.InterfaceC2931p1, p034j$.util.stream.InterfaceC2949s1
    /* renamed from: a */
    public InterfaceC2961u1 mo318a() {
        if (this.f841b >= this.f840a.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f841b), Integer.valueOf(this.f840a.length)));
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    public void accept(double d) {
        int i = this.f841b;
        double[] dArr = this.f840a;
        if (i >= dArr.length) {
            throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(this.f840a.length)));
        }
        this.f841b = i + 1;
        dArr[i] = d;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    public /* synthetic */ void accept(int i) {
        AbstractC2925o1.m351d(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3, p034j$.util.stream.InterfaceC2909l3, p034j$.util.function.InterfaceC2666q
    public /* synthetic */ void accept(long j) {
        AbstractC2925o1.m350e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.InterfaceC2655f
    /* renamed from: j */
    public InterfaceC2655f mo82j(InterfaceC2655f interfaceC2655f) {
        Objects.requireNonNull(interfaceC2655f);
        return new C2654e(this, interfaceC2655f);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: l */
    public /* synthetic */ void accept(Double d) {
        AbstractC2925o1.m354a(this, d);
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: m */
    public void mo316m() {
        if (this.f841b < this.f840a.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f841b), Integer.valueOf(this.f840a.length)));
        }
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: n */
    public void mo292n(long j) {
        if (j != this.f840a.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(this.f840a.length)));
        }
        this.f841b = 0;
    }

    @Override // p034j$.util.stream.InterfaceC2915m3
    /* renamed from: o */
    public /* synthetic */ boolean mo291o() {
        return false;
    }

    @Override // p034j$.util.stream.C2805T1
    public String toString() {
        return String.format("DoubleFixedNodeBuilder[%d][%s]", Integer.valueOf(this.f840a.length - this.f841b), Arrays.toString(this.f840a));
    }
}
