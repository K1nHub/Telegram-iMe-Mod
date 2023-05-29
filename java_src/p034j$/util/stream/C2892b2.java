package p034j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2706m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.b2 */
/* loaded from: classes2.dex */
public final class C2892b2 extends C2756D1 implements InterfaceC2993s1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2892b2(long j, InterfaceC2706m interfaceC2706m) {
        super(j, interfaceC2706m);
    }

    @Override // p034j$.util.stream.InterfaceC2993s1
    /* renamed from: a */
    public InterfaceC2738A1 mo323a() {
        if (this.f715b >= this.f714a.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f715b), Integer.valueOf(this.f714a.length)));
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    public /* synthetic */ void accept(double d) {
        AbstractC2969o1.m354f(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    public /* synthetic */ void accept(int i) {
        AbstractC2969o1.m356d(this);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3, p034j$.util.stream.InterfaceC2953l3, p034j$.util.function.InterfaceC2710q
    public /* synthetic */ void accept(long j) {
        AbstractC2969o1.m355e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        int i = this.f715b;
        Object[] objArr = this.f714a;
        if (i >= objArr.length) {
            throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(this.f714a.length)));
        }
        this.f715b = i + 1;
        objArr[i] = obj;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: m */
    public void mo321m() {
        if (this.f715b < this.f714a.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f715b), Integer.valueOf(this.f714a.length)));
        }
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: n */
    public void mo297n(long j) {
        if (j != this.f714a.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(this.f714a.length)));
        }
        this.f715b = 0;
    }

    @Override // p034j$.util.stream.InterfaceC2959m3
    /* renamed from: o */
    public /* synthetic */ boolean mo296o() {
        return false;
    }

    @Override // p034j$.util.stream.C2756D1
    public String toString() {
        return String.format("FixedNodeBuilder[%d][%s]", Integer.valueOf(this.f714a.length - this.f715b), Arrays.toString(this.f714a));
    }
}
