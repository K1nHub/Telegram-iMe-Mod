package p033j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p033j$.util.function.C2829o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2830p;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.m2 */
/* loaded from: classes2.dex */
public final class C3075m2 extends C3069l2 implements InterfaceC3104r1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3075m2(long j) {
        super(j);
    }

    @Override // p033j$.util.stream.InterfaceC3110s1
    /* renamed from: a */
    public /* bridge */ /* synthetic */ InterfaceC2855A1 mo387a() {
        mo387a();
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3104r1, p033j$.util.stream.InterfaceC3110s1
    /* renamed from: a */
    public InterfaceC3146y1 mo387a() {
        if (this.f1127b >= this.f1126a.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f1127b), Integer.valueOf(this.f1126a.length)));
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    public /* synthetic */ void accept(double d) {
        AbstractC3086o1.m418f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    public /* synthetic */ void accept(int i) {
        AbstractC3086o1.m420d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3, p033j$.util.stream.InterfaceC3070l3, p033j$.util.function.InterfaceC2830p
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

    @Override // p033j$.util.function.InterfaceC2830p
    /* renamed from: f */
    public InterfaceC2830p mo213f(InterfaceC2830p interfaceC2830p) {
        Objects.requireNonNull(interfaceC2830p);
        return new C2829o(this, interfaceC2830p);
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: l */
    public void mo385l() {
        if (this.f1127b < this.f1126a.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f1127b), Integer.valueOf(this.f1126a.length)));
        }
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: m */
    public void mo361m(long j) {
        if (j != this.f1126a.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(this.f1126a.length)));
        }
        this.f1127b = 0;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: o */
    public /* synthetic */ boolean mo360o() {
        return false;
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: r */
    public /* synthetic */ void accept(Long l) {
        AbstractC3086o1.m421c(this, l);
    }

    @Override // p033j$.util.stream.C3069l2
    public String toString() {
        return String.format("LongFixedNodeBuilder[%d][%s]", Integer.valueOf(this.f1126a.length - this.f1127b), Arrays.toString(this.f1126a));
    }
}
