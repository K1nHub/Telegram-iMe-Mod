package p033j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p033j$.util.function.C2816e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2817f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U1 */
/* loaded from: classes2.dex */
public final class C2968U1 extends C2963T1 implements InterfaceC3089p1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2968U1(long j) {
        super(j);
    }

    @Override // p033j$.util.stream.InterfaceC3107s1
    /* renamed from: a */
    public /* bridge */ /* synthetic */ InterfaceC2852A1 mo387a() {
        mo387a();
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3089p1, p033j$.util.stream.InterfaceC3107s1
    /* renamed from: a */
    public InterfaceC3119u1 mo387a() {
        if (this.f979b >= this.f978a.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f979b), Integer.valueOf(this.f978a.length)));
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    public void accept(double d) {
        int i = this.f979b;
        double[] dArr = this.f978a;
        if (i >= dArr.length) {
            throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(this.f978a.length)));
        }
        this.f979b = i + 1;
        dArr[i] = d;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    public /* synthetic */ void accept(int i) {
        AbstractC3083o1.m420d(this);
        throw null;
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

    @Override // p033j$.util.function.InterfaceC2817f
    /* renamed from: j */
    public InterfaceC2817f mo158j(InterfaceC2817f interfaceC2817f) {
        Objects.requireNonNull(interfaceC2817f);
        return new C2816e(this, interfaceC2817f);
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: l */
    public void mo385l() {
        if (this.f979b < this.f978a.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f979b), Integer.valueOf(this.f978a.length)));
        }
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: m */
    public void mo361m(long j) {
        if (j != this.f978a.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(this.f978a.length)));
        }
        this.f979b = 0;
    }

    @Override // p033j$.util.stream.InterfaceC3073m3
    /* renamed from: o */
    public /* synthetic */ boolean mo360o() {
        return false;
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: r */
    public /* synthetic */ void accept(Double d) {
        AbstractC3083o1.m423a(this, d);
    }

    @Override // p033j$.util.stream.C2963T1
    public String toString() {
        return String.format("DoubleFixedNodeBuilder[%d][%s]", Integer.valueOf(this.f978a.length - this.f979b), Arrays.toString(this.f978a));
    }
}
