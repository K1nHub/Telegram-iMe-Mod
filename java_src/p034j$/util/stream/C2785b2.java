package p034j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2599m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.b2 */
/* loaded from: classes2.dex */
public final class C2785b2 extends C2649D1 implements InterfaceC2886s1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2785b2(long j, InterfaceC2599m interfaceC2599m) {
        super(j, interfaceC2599m);
    }

    @Override // p034j$.util.stream.InterfaceC2886s1
    /* renamed from: a */
    public InterfaceC2631A1 mo337a() {
        if (this.f712b >= this.f711a.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f712b), Integer.valueOf(this.f711a.length)));
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    public /* synthetic */ void accept(double d) {
        AbstractC2862o1.m368f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    public /* synthetic */ void accept(int i) {
        AbstractC2862o1.m370d(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3, p034j$.util.stream.InterfaceC2846l3, p034j$.util.function.InterfaceC2603q
    public /* synthetic */ void accept(long j) {
        AbstractC2862o1.m369e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        int i = this.f712b;
        Object[] objArr = this.f711a;
        if (i >= objArr.length) {
            throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(this.f711a.length)));
        }
        this.f712b = i + 1;
        objArr[i] = obj;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: m */
    public void mo335m() {
        if (this.f712b < this.f711a.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f712b), Integer.valueOf(this.f711a.length)));
        }
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: n */
    public void mo311n(long j) {
        if (j != this.f711a.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(this.f711a.length)));
        }
        this.f712b = 0;
    }

    @Override // p034j$.util.stream.InterfaceC2852m3
    /* renamed from: o */
    public /* synthetic */ boolean mo310o() {
        return false;
    }

    @Override // p034j$.util.stream.C2649D1
    public String toString() {
        return String.format("FixedNodeBuilder[%d][%s]", Integer.valueOf(this.f711a.length - this.f712b), Arrays.toString(this.f711a));
    }
}
