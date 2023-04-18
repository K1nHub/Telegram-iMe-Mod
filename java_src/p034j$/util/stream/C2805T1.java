package p034j$.util.stream;

import java.util.Arrays;
import p034j$.util.AbstractC2612I;
import p034j$.util.InterfaceC2688s;
import p034j$.util.InterfaceC2995t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2655f;
import p034j$.util.function.InterfaceC2662m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.T1 */
/* loaded from: classes2.dex */
public class C2805T1 implements InterfaceC2961u1 {

    /* renamed from: a */
    final double[] f840a;

    /* renamed from: b */
    int f841b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2805T1(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f840a = new double[(int) j];
        this.f841b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2805T1(double[] dArr) {
        this.f840a = dArr;
        this.f841b = dArr.length;
    }

    @Override // p034j$.util.stream.InterfaceC2991z1, p034j$.util.stream.InterfaceC2694A1
    /* renamed from: b */
    public InterfaceC2991z1 mo275b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    public long count() {
        return this.f841b;
    }

    @Override // p034j$.util.stream.InterfaceC2991z1
    /* renamed from: d */
    public void mo273d(Object obj, int i) {
        System.arraycopy(this.f840a, 0, (double[]) obj, i, this.f841b);
    }

    @Override // p034j$.util.stream.InterfaceC2991z1
    /* renamed from: e */
    public Object mo272e() {
        double[] dArr = this.f840a;
        int length = dArr.length;
        int i = this.f841b;
        return length == i ? dArr : Arrays.copyOf(dArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: f */
    public /* synthetic */ void mo317i(Double[] dArr, int i) {
        AbstractC2925o1.m347h(this, dArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2925o1.m344k(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2991z1
    /* renamed from: g */
    public void mo271g(Object obj) {
        InterfaceC2655f interfaceC2655f = (InterfaceC2655f) obj;
        for (int i = 0; i < this.f841b; i++) {
            interfaceC2655f.accept(this.f840a[i]);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: k */
    public /* synthetic */ InterfaceC2961u1 mo313r(long j, long j2, InterfaceC2662m interfaceC2662m) {
        return AbstractC2925o1.m341n(this, j, j2, interfaceC2662m);
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: p */
    public /* synthetic */ int mo315p() {
        return 0;
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo314q(InterfaceC2662m interfaceC2662m) {
        return AbstractC2925o1.m348g(this, interfaceC2662m);
    }

    @Override // p034j$.util.stream.InterfaceC2991z1, p034j$.util.stream.InterfaceC2694A1
    public InterfaceC2995t spliterator() {
        return AbstractC2612I.m613j(this.f840a, 0, this.f841b, 1040);
    }

    public String toString() {
        return String.format("DoubleArrayNode[%d][%s]", Integer.valueOf(this.f840a.length - this.f841b), Arrays.toString(this.f840a));
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2694A1 mo275b(int i) {
        mo275b(i);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    public InterfaceC2688s spliterator() {
        return AbstractC2612I.m613j(this.f840a, 0, this.f841b, 1040);
    }
}
