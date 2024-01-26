package p033j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p033j$.util.function.C2824o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2825p;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.m2 */
/* loaded from: classes2.dex */
public final class C3070m2 extends C3064l2 implements InterfaceC3099r1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3070m2(long j) {
        super(j);
    }

    @Override // p033j$.util.stream.InterfaceC3105s1
    /* renamed from: a */
    public /* bridge */ /* synthetic */ InterfaceC2850A1 mo390a() {
        mo390a();
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3099r1, p033j$.util.stream.InterfaceC3105s1
    /* renamed from: a */
    public InterfaceC3141y1 mo390a() {
        if (this.f1127b >= this.f1126a.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f1127b), Integer.valueOf(this.f1126a.length)));
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    public /* synthetic */ void accept(double d) {
        AbstractC3081o1.m421f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    public /* synthetic */ void accept(int i) {
        AbstractC3081o1.m423d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3, p033j$.util.stream.InterfaceC3065l3, p033j$.util.function.InterfaceC2825p
    public void accept(long j) {
        int i = this.f1127b;
        long[] jArr = this.f1126a;
        if (i >= jArr.length) {
            throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(this.f1126a.length)));
        }
        this.f1127b = i + 1;
        jArr[i] = j;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.InterfaceC2825p
    /* renamed from: f */
    public InterfaceC2825p mo216f(InterfaceC2825p interfaceC2825p) {
        Objects.requireNonNull(interfaceC2825p);
        return new C2824o(this, interfaceC2825p);
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: l */
    public void mo388l() {
        if (this.f1127b < this.f1126a.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f1127b), Integer.valueOf(this.f1126a.length)));
        }
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: m */
    public void mo364m(long j) {
        if (j != this.f1126a.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(this.f1126a.length)));
        }
        this.f1127b = 0;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: o */
    public /* synthetic */ boolean mo363o() {
        return false;
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: r */
    public /* synthetic */ void accept(Long l) {
        AbstractC3081o1.m424c(this, l);
    }

    @Override // p033j$.util.stream.C3064l2
    public String toString() {
        return String.format("LongFixedNodeBuilder[%d][%s]", Integer.valueOf(this.f1126a.length - this.f1127b), Arrays.toString(this.f1126a));
    }
}
