package p033j$.util.stream;

import java.util.Arrays;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.b2 */
/* loaded from: classes2.dex */
public final class C3005b2 extends C2869D1 implements InterfaceC3106s1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3005b2(long j, IntFunction intFunction) {
        super(j, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC3106s1
    /* renamed from: a */
    public InterfaceC2851A1 mo386a() {
        if (this.f850b >= this.f849a.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f850b), Integer.valueOf(this.f849a.length)));
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    public /* synthetic */ void accept(double d) {
        AbstractC3082o1.m417f(this);
        throw null;
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
    public void accept(Object obj) {
        int i = this.f850b;
        Object[] objArr = this.f849a;
        if (i >= objArr.length) {
            throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(this.f849a.length)));
        }
        this.f850b = i + 1;
        objArr[i] = obj;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: l */
    public void mo384l() {
        if (this.f850b < this.f849a.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f850b), Integer.valueOf(this.f849a.length)));
        }
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: m */
    public void mo360m(long j) {
        if (j != this.f849a.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(this.f849a.length)));
        }
        this.f850b = 0;
    }

    @Override // p033j$.util.stream.InterfaceC3072m3
    /* renamed from: o */
    public /* synthetic */ boolean mo359o() {
        return false;
    }

    @Override // p033j$.util.stream.C2869D1
    public String toString() {
        return String.format("FixedNodeBuilder[%d][%s]", Integer.valueOf(this.f849a.length - this.f850b), Arrays.toString(this.f849a));
    }
}
