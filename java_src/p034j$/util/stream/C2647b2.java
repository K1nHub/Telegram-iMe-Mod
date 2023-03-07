package p034j$.util.stream;

import java.util.Arrays;
import java.util.Objects;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2461m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.b2 */
/* loaded from: classes2.dex */
public final class C2647b2 extends C2511D1 implements InterfaceC2748s1 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2647b2(long j, InterfaceC2461m interfaceC2461m) {
        super(j, interfaceC2461m);
    }

    @Override // p034j$.util.stream.InterfaceC2748s1
    /* renamed from: a */
    public InterfaceC2493A1 mo338a() {
        if (this.f706b >= this.f705a.length) {
            return this;
        }
        throw new IllegalStateException(String.format("Current size %d is less than fixed size %d", Integer.valueOf(this.f706b), Integer.valueOf(this.f705a.length)));
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
    public /* synthetic */ void accept(long j) {
        AbstractC2724o1.m370e(this);
        throw null;
    }

    @Override // p034j$.util.function.Consumer
    public void accept(Object obj) {
        int i = this.f706b;
        Object[] objArr = this.f705a;
        if (i >= objArr.length) {
            throw new IllegalStateException(String.format("Accept exceeded fixed size of %d", Integer.valueOf(this.f705a.length)));
        }
        this.f706b = i + 1;
        objArr[i] = obj;
    }

    @Override // p034j$.util.function.Consumer
    public /* synthetic */ Consumer andThen(Consumer consumer) {
        return Objects.requireNonNull(consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: m */
    public void mo336m() {
        if (this.f706b < this.f705a.length) {
            throw new IllegalStateException(String.format("End size %d is less than fixed size %d", Integer.valueOf(this.f706b), Integer.valueOf(this.f705a.length)));
        }
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: n */
    public void mo312n(long j) {
        if (j != this.f705a.length) {
            throw new IllegalStateException(String.format("Begin size %d is not equal to fixed size %d", Long.valueOf(j), Integer.valueOf(this.f705a.length)));
        }
        this.f706b = 0;
    }

    @Override // p034j$.util.stream.InterfaceC2714m3
    /* renamed from: o */
    public /* synthetic */ boolean mo311o() {
        return false;
    }

    @Override // p034j$.util.stream.C2511D1
    public String toString() {
        return String.format("FixedNodeBuilder[%d][%s]", Integer.valueOf(this.f705a.length - this.f706b), Arrays.toString(this.f705a));
    }
}
