package p034j$.util.stream;

import java.util.Arrays;
import p034j$.util.AbstractC2549I;
import p034j$.util.InterfaceC2625s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2599m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.D1 */
/* loaded from: classes2.dex */
public class C2649D1 implements InterfaceC2631A1 {

    /* renamed from: a */
    final Object[] f711a;

    /* renamed from: b */
    int f712b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2649D1(long j, InterfaceC2599m interfaceC2599m) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f711a = (Object[]) interfaceC2599m.apply((int) j);
        this.f712b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2649D1(Object[] objArr) {
        this.f711a = objArr;
        this.f712b = objArr.length;
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: b */
    public InterfaceC2631A1 mo294b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    public long count() {
        return this.f712b;
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    public void forEach(Consumer consumer) {
        for (int i = 0; i < this.f712b; i++) {
            consumer.accept(this.f711a[i]);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: i */
    public void mo336i(Object[] objArr, int i) {
        System.arraycopy(this.f711a, 0, objArr, i, this.f712b);
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: p */
    public /* synthetic */ int mo334p() {
        return 0;
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: q */
    public Object[] mo333q(InterfaceC2599m interfaceC2599m) {
        Object[] objArr = this.f711a;
        if (objArr.length == this.f712b) {
            return objArr;
        }
        throw new IllegalStateException();
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: r */
    public /* synthetic */ InterfaceC2631A1 mo332r(long j, long j2, InterfaceC2599m interfaceC2599m) {
        return AbstractC2862o1.m357q(this, j, j2, interfaceC2599m);
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    public InterfaceC2625s spliterator() {
        return AbstractC2549I.m629m(this.f711a, 0, this.f712b, 1040);
    }

    public String toString() {
        return String.format("ArrayNode[%d][%s]", Integer.valueOf(this.f711a.length - this.f712b), Arrays.toString(this.f711a));
    }
}
