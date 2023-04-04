package p035j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p035j$.util.function.C2678p;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2679q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.m2 */
/* loaded from: classes2.dex */
public final class C2927m2 extends C2921l2 implements InterfaceC2956r1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2927m2(long j) {
        super(j);
    }

    @Override // p035j$.util.stream.InterfaceC2962s1
    /* renamed from: a */
    public /* bridge */ /* synthetic */ InterfaceC2707A1 mo332a() {
        mo332a();
        return this;
    }

    @Override // p035j$.util.stream.InterfaceC2956r1, p035j$.util.stream.InterfaceC2962s1
    /* renamed from: a */
    public InterfaceC2998y1 mo332a() {
        if (this.f994b >= this.f993a.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f994b), Integer.valueOf(this.f993a.length)));
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    public /* synthetic */ void accept(double d) {
        AbstractC2938o1.m363f(this);
        throw null;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    public /* synthetic */ void accept(int i) {
        AbstractC2938o1.m365d(this);
        throw null;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3, p035j$.util.stream.InterfaceC2922l3, p035j$.util.function.InterfaceC2679q
    public void accept(long j) {
        int i = this.f994b;
        long[] jArr = this.f993a;
        if (i >= jArr.length) {
            throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(this.f993a.length)));
        }
        this.f994b = i + 1;
        jArr[i] = j;
    }

    @Override // p035j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p035j$.util.function.InterfaceC2679q
    /* renamed from: f */
    public InterfaceC2679q mo149f(InterfaceC2679q interfaceC2679q) {
        Objects.requireNonNull(interfaceC2679q);
        return new C2678p(this, interfaceC2679q);
    }

    @Override // p035j$.util.function.Consumer
    /* renamed from: l */
    public /* synthetic */ void accept(Long l) {
        AbstractC2938o1.m366c(this, l);
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: m */
    public void mo330m() {
        if (this.f994b < this.f993a.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f994b), Integer.valueOf(this.f993a.length)));
        }
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public void mo306n(long j) {
        if (j != this.f993a.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(this.f993a.length)));
        }
        this.f994b = 0;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: o */
    public /* synthetic */ boolean mo305o() {
        return false;
    }

    @Override // p035j$.util.stream.C2921l2
    public String toString() {
        return String.format("LongFixedNodeBuilder[%d][%s]", Integer.valueOf(this.f993a.length - this.f994b), Arrays.toString(this.f993a));
    }
}
