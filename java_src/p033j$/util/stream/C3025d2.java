package p033j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p033j$.util.function.C2825k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.d2 */
/* loaded from: classes2.dex */
public final class C3025d2 extends C3019c2 implements InterfaceC3102q1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3025d2(long j) {
        super(j);
    }

    @Override // p033j$.util.stream.InterfaceC3114s1
    /* renamed from: a */
    public /* bridge */ /* synthetic */ InterfaceC2859A1 mo341a() {
        mo341a();
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3102q1, p033j$.util.stream.InterfaceC3114s1
    /* renamed from: a */
    public InterfaceC3138w1 mo341a() {
        if (this.f984b >= this.f983a.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f984b), Integer.valueOf(this.f983a.length)));
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public /* synthetic */ void accept(double d) {
        AbstractC3090o1.m372f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public void accept(int i) {
        int i2 = this.f984b;
        int[] iArr = this.f983a;
        if (i2 >= iArr.length) {
            throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(this.f983a.length)));
        }
        this.f984b = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3, p033j$.util.stream.InterfaceC3074l3, p033j$.util.function.InterfaceC2831q
    public /* synthetic */ void accept(long j) {
        AbstractC3090o1.m373e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: k */
    public /* synthetic */ void accept(Integer num) {
        AbstractC3090o1.m376b(this, num);
    }

    @Override // p033j$.util.function.InterfaceC2826l
    /* renamed from: l */
    public InterfaceC2826l mo183l(InterfaceC2826l interfaceC2826l) {
        Objects.requireNonNull(interfaceC2826l);
        return new C2825k(this, interfaceC2826l);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public void mo339m() {
        if (this.f984b < this.f983a.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f984b), Integer.valueOf(this.f983a.length)));
        }
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo315n(long j) {
        if (j != this.f983a.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(this.f983a.length)));
        }
        this.f984b = 0;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }

    @Override // p033j$.util.stream.C3019c2
    public String toString() {
        return String.format("IntFixedNodeBuilder[%d][%s]", Integer.valueOf(this.f983a.length - this.f984b), Arrays.toString(this.f983a));
    }
}
