package p034j$.util.stream;

import java.util.Arrays;
import p034j$.util.AbstractC2535I;
import p034j$.util.InterfaceC2611s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2585m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.D1 */
/* loaded from: classes2.dex */
public class C2635D1 implements InterfaceC2617A1 {

    /* renamed from: a */
    final Object[] f710a;

    /* renamed from: b */
    int f711b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2635D1(long j, InterfaceC2585m interfaceC2585m) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f710a = (Object[]) interfaceC2585m.apply((int) j);
        this.f711b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2635D1(Object[] objArr) {
        this.f710a = objArr;
        this.f711b = objArr.length;
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: b */
    public InterfaceC2617A1 mo295b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    public long count() {
        return this.f711b;
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    public void forEach(Consumer consumer) {
        for (int i = 0; i < this.f711b; i++) {
            consumer.accept(this.f710a[i]);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: i */
    public void mo337i(Object[] objArr, int i) {
        System.arraycopy(this.f710a, 0, objArr, i, this.f711b);
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: p */
    public /* synthetic */ int mo335p() {
        return 0;
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: q */
    public Object[] mo334q(InterfaceC2585m interfaceC2585m) {
        Object[] objArr = this.f710a;
        if (objArr.length == this.f711b) {
            return objArr;
        }
        throw new IllegalStateException();
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: r */
    public /* synthetic */ InterfaceC2617A1 mo333r(long j, long j2, InterfaceC2585m interfaceC2585m) {
        return AbstractC2848o1.m358q(this, j, j2, interfaceC2585m);
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    public InterfaceC2611s spliterator() {
        return AbstractC2535I.m630m(this.f710a, 0, this.f711b, 1040);
    }

    public String toString() {
        return String.format("ArrayNode[%d][%s]", Integer.valueOf(this.f710a.length - this.f711b), Arrays.toString(this.f710a));
    }
}
