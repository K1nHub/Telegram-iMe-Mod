package p033j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p033j$.util.function.C2819e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2820f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U1 */
/* loaded from: classes2.dex */
public final class C2975U1 extends C2970T1 implements InterfaceC3096p1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2975U1(long j) {
        super(j);
    }

    @Override // p033j$.util.stream.InterfaceC3114s1
    /* renamed from: a */
    public /* bridge */ /* synthetic */ InterfaceC2859A1 mo341a() {
        mo341a();
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3096p1, p033j$.util.stream.InterfaceC3114s1
    /* renamed from: a */
    public InterfaceC3126u1 mo341a() {
        if (this.f929b >= this.f928a.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f929b), Integer.valueOf(this.f928a.length)));
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public void accept(double d) {
        int i = this.f929b;
        double[] dArr = this.f928a;
        if (i >= dArr.length) {
            throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(this.f928a.length)));
        }
        this.f929b = i + 1;
        dArr[i] = d;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public /* synthetic */ void accept(int i) {
        AbstractC3090o1.m374d(this);
        throw null;
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

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public InterfaceC2820f mo105j(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return new C2819e(this, interfaceC2820f);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: l */
    public /* synthetic */ void accept(Double d) {
        AbstractC3090o1.m377a(this, d);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public void mo339m() {
        if (this.f929b < this.f928a.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f929b), Integer.valueOf(this.f928a.length)));
        }
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo315n(long j) {
        if (j != this.f928a.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(this.f928a.length)));
        }
        this.f929b = 0;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }

    @Override // p033j$.util.stream.C2970T1
    public String toString() {
        return String.format("DoubleFixedNodeBuilder[%d][%s]", Integer.valueOf(this.f928a.length - this.f929b), Arrays.toString(this.f928a));
    }
}
