package p033j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p033j$.util.function.C2958e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2959f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U1 */
/* loaded from: classes2.dex */
public final class C3114U1 extends C3109T1 implements InterfaceC3235p1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3114U1(long j) {
        super(j);
    }

    @Override // p033j$.util.stream.InterfaceC3253s1
    /* renamed from: a */
    public /* bridge */ /* synthetic */ InterfaceC2998A1 mo341a() {
        mo341a();
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3235p1, p033j$.util.stream.InterfaceC3253s1
    /* renamed from: a */
    public InterfaceC3265u1 mo341a() {
        if (this.f939b >= this.f938a.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f939b), Integer.valueOf(this.f938a.length)));
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    public void accept(double d) {
        int i = this.f939b;
        double[] dArr = this.f938a;
        if (i >= dArr.length) {
            throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(this.f938a.length)));
        }
        this.f939b = i + 1;
        dArr[i] = d;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    public /* synthetic */ void accept(int i) {
        AbstractC3229o1.m374d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3, p033j$.util.stream.InterfaceC3213l3, p033j$.util.function.InterfaceC2970q
    public /* synthetic */ void accept(long j) {
        AbstractC3229o1.m373e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.InterfaceC2959f
    /* renamed from: j */
    public InterfaceC2959f mo105j(InterfaceC2959f interfaceC2959f) {
        Objects.requireNonNull(interfaceC2959f);
        return new C2958e(this, interfaceC2959f);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: l */
    public /* synthetic */ void accept(Double d) {
        AbstractC3229o1.m377a(this, d);
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: m */
    public void mo339m() {
        if (this.f939b < this.f938a.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f939b), Integer.valueOf(this.f938a.length)));
        }
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: n */
    public void mo315n(long j) {
        if (j != this.f938a.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(this.f938a.length)));
        }
        this.f939b = 0;
    }

    @Override // p033j$.util.stream.InterfaceC3219m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }

    @Override // p033j$.util.stream.C3109T1
    public String toString() {
        return String.format("DoubleFixedNodeBuilder[%d][%s]", Integer.valueOf(this.f938a.length - this.f939b), Arrays.toString(this.f938a));
    }
}
