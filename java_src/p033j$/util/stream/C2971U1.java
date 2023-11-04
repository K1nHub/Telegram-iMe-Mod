package p033j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p033j$.util.function.C2819e;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2820f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.U1 */
/* loaded from: classes2.dex */
public final class C2971U1 extends C2966T1 implements InterfaceC3092p1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2971U1(long j) {
        super(j);
    }

    @Override // p033j$.util.stream.InterfaceC3110s1
    /* renamed from: a */
    public /* bridge */ /* synthetic */ InterfaceC2855A1 mo387a() {
        mo387a();
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3092p1, p033j$.util.stream.InterfaceC3110s1
    /* renamed from: a */
    public InterfaceC3122u1 mo387a() {
        if (this.f979b >= this.f978a.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f979b), Integer.valueOf(this.f978a.length)));
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    public void accept(double d) {
        int i = this.f979b;
        double[] dArr = this.f978a;
        if (i >= dArr.length) {
            throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(this.f978a.length)));
        }
        this.f979b = i + 1;
        dArr[i] = d;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    public /* synthetic */ void accept(int i) {
        AbstractC3086o1.m420d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3, p033j$.util.stream.InterfaceC3070l3, p033j$.util.function.InterfaceC2830p
    public /* synthetic */ void accept(long j) {
        AbstractC3086o1.m419e(this);
        throw null;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.InterfaceC2820f
    /* renamed from: j */
    public InterfaceC2820f mo158j(InterfaceC2820f interfaceC2820f) {
        Objects.requireNonNull(interfaceC2820f);
        return new C2819e(this, interfaceC2820f);
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: l */
    public void mo385l() {
        if (this.f979b < this.f978a.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f979b), Integer.valueOf(this.f978a.length)));
        }
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: m */
    public void mo361m(long j) {
        if (j != this.f978a.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(this.f978a.length)));
        }
        this.f979b = 0;
    }

    @Override // p033j$.util.stream.InterfaceC3076m3
    /* renamed from: o */
    public /* synthetic */ boolean mo360o() {
        return false;
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: r */
    public /* synthetic */ void accept(Double d) {
        AbstractC3086o1.m423a(this, d);
    }

    @Override // p033j$.util.stream.C2966T1
    public String toString() {
        return String.format("DoubleFixedNodeBuilder[%d][%s]", Integer.valueOf(this.f978a.length - this.f979b), Arrays.toString(this.f978a));
    }
}
