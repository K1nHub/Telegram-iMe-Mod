package p035j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p035j$.util.function.C2673k;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2674l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.d2 */
/* loaded from: classes2.dex */
public final class C2873d2 extends C2867c2 implements InterfaceC2950q1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2873d2(long j) {
        super(j);
    }

    @Override // p035j$.util.stream.InterfaceC2962s1
    /* renamed from: a */
    public /* bridge */ /* synthetic */ InterfaceC2707A1 mo332a() {
        mo332a();
        return this;
    }

    @Override // p035j$.util.stream.InterfaceC2950q1, p035j$.util.stream.InterfaceC2962s1
    /* renamed from: a */
    public InterfaceC2986w1 mo332a() {
        if (this.f901b >= this.f900a.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f901b), Integer.valueOf(this.f900a.length)));
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    public /* synthetic */ void accept(double d) {
        AbstractC2938o1.m363f(this);
        throw null;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    public void accept(int i) {
        int i2 = this.f901b;
        int[] iArr = this.f900a;
        if (i2 >= iArr.length) {
            throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(this.f900a.length)));
        }
        this.f901b = i2 + 1;
        iArr[i2] = i;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3, p035j$.util.stream.InterfaceC2922l3, p035j$.util.function.InterfaceC2679q
    public /* synthetic */ void accept(long j) {
        AbstractC2938o1.m364e(this);
        throw null;
    }

    @Override // p035j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p035j$.util.function.Consumer
    /* renamed from: k */
    public /* synthetic */ void accept(Integer num) {
        AbstractC2938o1.m367b(this, num);
    }

    @Override // p035j$.util.function.InterfaceC2674l
    /* renamed from: l */
    public InterfaceC2674l mo174l(InterfaceC2674l interfaceC2674l) {
        Objects.requireNonNull(interfaceC2674l);
        return new C2673k(this, interfaceC2674l);
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: m */
    public void mo330m() {
        if (this.f901b < this.f900a.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f901b), Integer.valueOf(this.f900a.length)));
        }
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: n */
    public void mo306n(long j) {
        if (j != this.f900a.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(this.f900a.length)));
        }
        this.f901b = 0;
    }

    @Override // p035j$.util.stream.InterfaceC2928m3
    /* renamed from: o */
    public /* synthetic */ boolean mo305o() {
        return false;
    }

    @Override // p035j$.util.stream.C2867c2
    public String toString() {
        return String.format("IntFixedNodeBuilder[%d][%s]", Integer.valueOf(this.f900a.length - this.f901b), Arrays.toString(this.f900a));
    }
}
