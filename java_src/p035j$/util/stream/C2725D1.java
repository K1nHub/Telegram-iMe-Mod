package p035j$.util.stream;

import java.util.Arrays;
import p035j$.util.AbstractC2625I;
import p035j$.util.InterfaceC2701s;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2675m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.D1 */
/* loaded from: classes2.dex */
public class C2725D1 implements InterfaceC2707A1 {

    /* renamed from: a */
    final Object[] f716a;

    /* renamed from: b */
    int f717b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2725D1(long j, InterfaceC2675m interfaceC2675m) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f716a = (Object[]) interfaceC2675m.apply((int) j);
        this.f717b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2725D1(Object[] objArr) {
        this.f716a = objArr;
        this.f717b = objArr.length;
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: b */
    public InterfaceC2707A1 mo289b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    public long count() {
        return this.f717b;
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    public void forEach(Consumer consumer) {
        for (int i = 0; i < this.f717b; i++) {
            consumer.accept(this.f716a[i]);
        }
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: i */
    public void mo331i(Object[] objArr, int i) {
        System.arraycopy(this.f716a, 0, objArr, i, this.f717b);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: p */
    public /* synthetic */ int mo329p() {
        return 0;
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: q */
    public Object[] mo328q(InterfaceC2675m interfaceC2675m) {
        Object[] objArr = this.f716a;
        if (objArr.length == this.f717b) {
            return objArr;
        }
        throw new IllegalStateException();
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: r */
    public /* synthetic */ InterfaceC2707A1 mo327r(long j, long j2, InterfaceC2675m interfaceC2675m) {
        return AbstractC2938o1.m352q(this, j, j2, interfaceC2675m);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    public InterfaceC2701s spliterator() {
        return AbstractC2625I.m624m(this.f716a, 0, this.f717b, 1040);
    }

    public String toString() {
        return String.format("ArrayNode[%d][%s]", Integer.valueOf(this.f716a.length - this.f717b), Arrays.toString(this.f716a));
    }
}
