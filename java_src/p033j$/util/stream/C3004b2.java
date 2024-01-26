package p033j$.util.stream;

import java.util.Arrays;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.b2 */
/* loaded from: classes2.dex */
public final class C3004b2 extends C2868D1 implements InterfaceC3105s1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3004b2(long j, IntFunction intFunction) {
        super(j, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC3105s1
    /* renamed from: a */
    public InterfaceC2850A1 mo390a() {
        if (this.f850b >= this.f849a.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f850b), Integer.valueOf(this.f849a.length)));
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
    public /* synthetic */ void accept(long j) {
        AbstractC3081o1.m422e(this);
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

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: l */
    public void mo388l() {
        if (this.f850b < this.f849a.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f850b), Integer.valueOf(this.f849a.length)));
        }
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: m */
    public void mo364m(long j) {
        if (j != this.f849a.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(this.f849a.length)));
        }
        this.f850b = 0;
    }

    @Override // p033j$.util.stream.InterfaceC3071m3
    /* renamed from: o */
    public /* synthetic */ boolean mo363o() {
        return false;
    }

    @Override // p033j$.util.stream.C2868D1
    public String toString() {
        return String.format("FixedNodeBuilder[%d][%s]", Integer.valueOf(this.f849a.length - this.f850b), Arrays.toString(this.f849a));
    }
}
