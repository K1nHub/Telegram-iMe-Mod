package p033j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p033j$.util.function.C2830p;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2831q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.m2 */
/* loaded from: classes2.dex */
public final class C3079m2 extends C3073l2 implements InterfaceC3108r1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C3079m2(long j) {
        super(j);
    }

    @Override // p033j$.util.stream.InterfaceC3114s1
    /* renamed from: a */
    public /* bridge */ /* synthetic */ InterfaceC2859A1 mo341a() {
        mo341a();
        return this;
    }

    @Override // p033j$.util.stream.InterfaceC3108r1, p033j$.util.stream.InterfaceC3114s1
    /* renamed from: a */
    public InterfaceC3150y1 mo341a() {
        if (this.f1077b >= this.f1076a.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f1077b), Integer.valueOf(this.f1076a.length)));
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public /* synthetic */ void accept(double d) {
        AbstractC3090o1.m372f(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    public /* synthetic */ void accept(int i) {
        AbstractC3090o1.m374d(this);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3, p033j$.util.stream.InterfaceC3074l3, p033j$.util.function.InterfaceC2831q
    public void accept(long j) {
        int i = this.f1077b;
        long[] jArr = this.f1076a;
        if (i >= jArr.length) {
            throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(this.f1076a.length)));
        }
        this.f1077b = i + 1;
        jArr[i] = j;
    }

    @Override // p033j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Consumer.CC.$default$andThen(this, consumer);
    }

    @Override // p033j$.util.function.InterfaceC2831q
    /* renamed from: f */
    public InterfaceC2831q mo158f(InterfaceC2831q interfaceC2831q) {
        Objects.requireNonNull(interfaceC2831q);
        return new C2830p(this, interfaceC2831q);
    }

    @Override // p033j$.util.function.Consumer
    /* renamed from: l */
    public /* synthetic */ void accept(Long l) {
        AbstractC3090o1.m375c(this, l);
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: m */
    public void mo339m() {
        if (this.f1077b < this.f1076a.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f1077b), Integer.valueOf(this.f1076a.length)));
        }
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: n */
    public void mo315n(long j) {
        if (j != this.f1076a.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(this.f1076a.length)));
        }
        this.f1077b = 0;
    }

    @Override // p033j$.util.stream.InterfaceC3080m3
    /* renamed from: o */
    public /* synthetic */ boolean mo314o() {
        return false;
    }

    @Override // p033j$.util.stream.C3073l2
    public String toString() {
        return String.format("LongFixedNodeBuilder[%d][%s]", Integer.valueOf(this.f1076a.length - this.f1077b), Arrays.toString(this.f1076a));
    }
}
