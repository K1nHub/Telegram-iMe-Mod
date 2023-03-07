package p034j$.util.stream;

import java.util.Arrays;
import p034j$.util.AbstractC2411I;
import p034j$.util.InterfaceC2487s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2461m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.D1 */
/* loaded from: classes2.dex */
public class C2511D1 implements InterfaceC2493A1 {

    /* renamed from: a */
    final Object[] f705a;

    /* renamed from: b */
    int f706b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2511D1(long j, InterfaceC2461m interfaceC2461m) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f705a = (Object[]) interfaceC2461m.apply((int) j);
        this.f706b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2511D1(Object[] objArr) {
        this.f705a = objArr;
        this.f706b = objArr.length;
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: b */
    public InterfaceC2493A1 mo295b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    public long count() {
        return this.f706b;
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    public void forEach(Consumer consumer) {
        for (int i = 0; i < this.f706b; i++) {
            consumer.accept(this.f705a[i]);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: i */
    public void mo337i(Object[] objArr, int i) {
        System.arraycopy(this.f705a, 0, objArr, i, this.f706b);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: p */
    public /* synthetic */ int mo335p() {
        return 0;
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: q */
    public Object[] mo334q(InterfaceC2461m interfaceC2461m) {
        Object[] objArr = this.f705a;
        if (objArr.length == this.f706b) {
            return objArr;
        }
        throw new IllegalStateException();
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: r */
    public /* synthetic */ InterfaceC2493A1 mo333r(long j, long j2, InterfaceC2461m interfaceC2461m) {
        return AbstractC2724o1.m358q(this, j, j2, interfaceC2461m);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    public InterfaceC2487s spliterator() {
        return AbstractC2411I.m630m(this.f705a, 0, this.f706b, 1040);
    }

    public String toString() {
        return String.format("ArrayNode[%d][%s]", Integer.valueOf(this.f705a.length - this.f706b), Arrays.toString(this.f705a));
    }
}
