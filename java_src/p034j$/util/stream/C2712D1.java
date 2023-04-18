package p034j$.util.stream;

import java.util.Arrays;
import p034j$.util.AbstractC2612I;
import p034j$.util.InterfaceC2688s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2662m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.D1 */
/* loaded from: classes2.dex */
public class C2712D1 implements InterfaceC2694A1 {

    /* renamed from: a */
    final Object[] f711a;

    /* renamed from: b */
    int f712b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2712D1(long j, InterfaceC2662m interfaceC2662m) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f711a = (Object[]) interfaceC2662m.apply((int) j);
        this.f712b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2712D1(Object[] objArr) {
        this.f711a = objArr;
        this.f712b = objArr.length;
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: b */
    public InterfaceC2694A1 mo275b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    public long count() {
        return this.f712b;
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    public void forEach(Consumer consumer) {
        for (int i = 0; i < this.f712b; i++) {
            consumer.accept(this.f711a[i]);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: i */
    public void mo317i(Object[] objArr, int i) {
        System.arraycopy(this.f711a, 0, objArr, i, this.f712b);
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: p */
    public /* synthetic */ int mo315p() {
        return 0;
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: q */
    public Object[] mo314q(InterfaceC2662m interfaceC2662m) {
        Object[] objArr = this.f711a;
        if (objArr.length == this.f712b) {
            return objArr;
        }
        throw new IllegalStateException();
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: r */
    public /* synthetic */ InterfaceC2694A1 mo313r(long j, long j2, InterfaceC2662m interfaceC2662m) {
        return AbstractC2925o1.m338q(this, j, j2, interfaceC2662m);
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    public InterfaceC2688s spliterator() {
        return AbstractC2612I.m610m(this.f711a, 0, this.f712b, 1040);
    }

    public String toString() {
        return String.format("ArrayNode[%d][%s]", Integer.valueOf(this.f711a.length - this.f712b), Arrays.toString(this.f711a));
    }
}
