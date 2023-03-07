package p034j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p034j$.util.function.C2464p;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2465q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.m2 */
/* loaded from: classes2.dex */
public final class C2713m2 extends C2707l2 implements InterfaceC2742r1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2713m2(long j) {
        super(j);
    }

    @Override // p034j$.util.stream.InterfaceC2742r1, p034j$.util.stream.InterfaceC2748s1
    /* renamed from: a */
    public /* bridge */ /* synthetic */ InterfaceC2493A1 mo338a() {
        mo338a();
        return this;
    }

    @Override // p034j$.util.stream.InterfaceC2742r1, p034j$.util.stream.InterfaceC2748s1
    /* renamed from: a */
    public InterfaceC2784y1 mo338a() {
        if (this.f983b >= this.f982a.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f983b), Integer.valueOf(this.f982a.length)));
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    public /* synthetic */ void accept(double d) {
        AbstractC2724o1.m369f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    public /* synthetic */ void accept(int i) {
        AbstractC2724o1.m371d(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3, p034j$.util.stream.InterfaceC2708l3, p034j$.util.function.InterfaceC2465q
    public void accept(long j) {
        int i = this.f983b;
        long[] jArr = this.f982a;
        if (i >= jArr.length) {
            throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(this.f982a.length)));
        }
        this.f983b = i + 1;
        jArr[i] = j;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.function.InterfaceC2465q
    /* renamed from: f */
    public InterfaceC2465q mo155f(InterfaceC2465q interfaceC2465q) {
        Objects.requireNonNull(interfaceC2465q);
        return new C2464p(this, interfaceC2465q);
    }

    @Override // p034j$.util.function.Consumer
    /* renamed from: l */
    public /* synthetic */ void accept(Long l) {
        AbstractC2724o1.m372c(this, l);
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: m */
    public void mo336m() {
        if (this.f983b < this.f982a.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f983b), Integer.valueOf(this.f982a.length)));
        }
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        if (j != this.f982a.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(this.f982a.length)));
        }
        this.f983b = 0;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }

    @Override // p034j$.util.stream.C2707l2
    public String toString() {
        return String.format("LongFixedNodeBuilder[%d][%s]", Integer.valueOf(this.f982a.length - this.f983b), Arrays.toString(this.f982a));
    }
}
