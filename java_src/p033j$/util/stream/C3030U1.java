package p033j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p033j$.util.function.C2874e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2875f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U1 */
/* loaded from: classes2.dex */
public final class C3030U1 extends C3025T1 implements InterfaceC3151p1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3030U1(long j) {
        super(j);
    }

    @Override // p033j$.util.stream.InterfaceC3169s1
    /* renamed from: a */
    public /* bridge */ /* synthetic */ InterfaceC2914A1 mo341a() {
        mo341a();
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3151p1, p033j$.util.stream.InterfaceC3169s1
    /* renamed from: a */
    public InterfaceC3181u1 mo341a() {
        if (this.f930b >= this.f929a.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f930b), Integer.valueOf(this.f929a.length)));
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    public void accept(double d) {
        int i = this.f930b;
        double[] dArr = this.f929a;
        if (i >= dArr.length) {
            throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(this.f929a.length)));
        }
        this.f930b = i + 1;
        dArr[i] = d;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    public /* synthetic */ void accept(int i) {
        AbstractC3145o1.m374d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3, p033j$.util.stream.InterfaceC3129l3, p033j$.util.function.InterfaceC2886q
    public /* synthetic */ void accept(long j) {
        AbstractC3145o1.m373e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.InterfaceC2875f
    /* renamed from: j */
    public InterfaceC2875f mo105j(InterfaceC2875f interfaceC2875f) {
        Objects.requireNonNull(interfaceC2875f);
        return new C2874e(this, interfaceC2875f);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: l */
    public /* synthetic */ void accept(Double d) {
        AbstractC3145o1.m377a(this, d);
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: m */
    public void mo339m() {
        if (this.f930b < this.f929a.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f930b), Integer.valueOf(this.f929a.length)));
        }
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: n */
    public void mo315n(long j) {
        if (j != this.f929a.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(this.f929a.length)));
        }
        this.f930b = 0;
    }

    @Override // p033j$.util.stream.InterfaceC3135m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }

    @Override // p033j$.util.stream.C3025T1
    public String toString() {
        return String.format("DoubleFixedNodeBuilder[%d][%s]", Integer.valueOf(this.f929a.length - this.f930b), Arrays.toString(this.f929a));
    }
}
