package p035j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p035j$.util.function.C2667e;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2668f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U1 */
/* loaded from: classes2.dex */
public final class C2823U1 extends C2818T1 implements InterfaceC2944p1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2823U1(long j) {
        super(j);
    }

    @Override // p035j$.util.stream.InterfaceC2962s1
    /* renamed from: a */
    public /* bridge */ /* synthetic */ InterfaceC2707A1 mo332a() {
        mo332a();
        return this;
    }

    @Override // p035j$.util.stream.InterfaceC2944p1, p035j$.util.stream.InterfaceC2962s1
    /* renamed from: a */
    public InterfaceC2974u1 mo332a() {
        if (this.f846b >= this.f845a.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f846b), Integer.valueOf(this.f845a.length)));
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    public void accept(double d) {
        int i = this.f846b;
        double[] dArr = this.f845a;
        if (i >= dArr.length) {
            throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(this.f845a.length)));
        }
        this.f846b = i + 1;
        dArr[i] = d;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    public /* synthetic */ void accept(int i) {
        AbstractC2938o1.m365d(this);
        throw null;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3, p035j$.util.stream.InterfaceC2922l3, p035j$.util.function.InterfaceC2679q
    public /* synthetic */ void accept(long j) {
        AbstractC2938o1.m364e(this);
        throw null;
    }

    @Override // p035j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p035j$.util.function.InterfaceC2668f
    /* renamed from: j */
    public InterfaceC2668f mo96j(InterfaceC2668f interfaceC2668f) {
        Objects.requireNonNull(interfaceC2668f);
        return new C2667e(this, interfaceC2668f);
    }

    @Override // p035j$.util.function.Consumer
    /* renamed from: l */
    public /* synthetic */ void accept(Double d) {
        AbstractC2938o1.m368a(this, d);
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: m */
    public void mo330m() {
        if (this.f846b < this.f845a.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f846b), Integer.valueOf(this.f845a.length)));
        }
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public void mo306n(long j) {
        if (j != this.f845a.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(this.f845a.length)));
        }
        this.f846b = 0;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: o */
    public /* synthetic */ boolean mo305o() {
        return false;
    }

    @Override // p035j$.util.stream.C2818T1
    public String toString() {
        return String.format("DoubleFixedNodeBuilder[%d][%s]", Integer.valueOf(this.f845a.length - this.f846b), Arrays.toString(this.f845a));
    }
}
