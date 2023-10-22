package p033j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p033j$.util.function.C2815e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2816f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U1 */
/* loaded from: classes2.dex */
public final class C2967U1 extends C2962T1 implements InterfaceC3088p1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2967U1(long j) {
        super(j);
    }

    @Override // p033j$.util.stream.InterfaceC3106s1
    /* renamed from: a */
    public /* bridge */ /* synthetic */ InterfaceC2851A1 mo386a() {
        mo386a();
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3088p1, p033j$.util.stream.InterfaceC3106s1
    /* renamed from: a */
    public InterfaceC3118u1 mo386a() {
        if (this.f979b >= this.f978a.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f979b), Integer.valueOf(this.f978a.length)));
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    public void accept(double d) {
        int i = this.f979b;
        double[] dArr = this.f978a;
        if (i >= dArr.length) {
            throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(this.f978a.length)));
        }
        this.f979b = i + 1;
        dArr[i] = d;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    public /* synthetic */ void accept(int i) {
        AbstractC3082o1.m419d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3, p033j$.util.stream.InterfaceC3066l3, p033j$.util.function.InterfaceC2826p
    public /* synthetic */ void accept(long j) {
        AbstractC3082o1.m418e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.InterfaceC2816f
    /* renamed from: j */
    public InterfaceC2816f mo156j(InterfaceC2816f interfaceC2816f) {
        Objects.requireNonNull(interfaceC2816f);
        return new C2815e(this, interfaceC2816f);
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: l */
    public void mo384l() {
        if (this.f979b < this.f978a.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f979b), Integer.valueOf(this.f978a.length)));
        }
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: m */
    public void mo360m(long j) {
        if (j != this.f978a.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(this.f978a.length)));
        }
        this.f979b = 0;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: o */
    public /* synthetic */ boolean mo359o() {
        return false;
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: r */
    public /* synthetic */ void accept(Double d) {
        AbstractC3082o1.m422a(this, d);
    }

    @Override // p033j$.util.stream.C2962T1
    public String toString() {
        return String.format("DoubleFixedNodeBuilder[%d][%s]", Integer.valueOf(this.f978a.length - this.f979b), Arrays.toString(this.f978a));
    }
}
