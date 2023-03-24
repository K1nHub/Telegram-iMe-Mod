package p034j$.util.stream;

import java.util.Arrays;
import p034j$.util.AbstractC2549I;
import p034j$.util.InterfaceC2625s;
import p034j$.util.InterfaceC2932t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2592f;
import p034j$.util.function.InterfaceC2599m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.T1 */
/* loaded from: classes2.dex */
public class C2742T1 implements InterfaceC2898u1 {

    /* renamed from: a */
    final double[] f840a;

    /* renamed from: b */
    int f841b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2742T1(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f840a = new double[(int) j];
        this.f841b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2742T1(double[] dArr) {
        this.f840a = dArr;
        this.f841b = dArr.length;
    }

    @Override // p034j$.util.stream.InterfaceC2928z1, p034j$.util.stream.InterfaceC2631A1
    /* renamed from: b */
    public InterfaceC2928z1 mo294b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    public long count() {
        return this.f841b;
    }

    @Override // p034j$.util.stream.InterfaceC2928z1
    /* renamed from: d */
    public void mo292d(Object obj, int i) {
        System.arraycopy(this.f840a, 0, (double[]) obj, i, this.f841b);
    }

    @Override // p034j$.util.stream.InterfaceC2928z1
    /* renamed from: e */
    public Object mo291e() {
        double[] dArr = this.f840a;
        int length = dArr.length;
        int i = this.f841b;
        return length == i ? dArr : Arrays.copyOf(dArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: f */
    public /* synthetic */ void mo336i(Double[] dArr, int i) {
        AbstractC2862o1.m366h(this, dArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2862o1.m363k(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2928z1
    /* renamed from: g */
    public void mo290g(Object obj) {
        InterfaceC2592f interfaceC2592f = (InterfaceC2592f) obj;
        for (int i = 0; i < this.f841b; i++) {
            interfaceC2592f.accept(this.f840a[i]);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: k */
    public /* synthetic */ InterfaceC2898u1 mo332r(long j, long j2, InterfaceC2599m interfaceC2599m) {
        return AbstractC2862o1.m360n(this, j, j2, interfaceC2599m);
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: p */
    public /* synthetic */ int mo334p() {
        return 0;
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo333q(InterfaceC2599m interfaceC2599m) {
        return AbstractC2862o1.m367g(this, interfaceC2599m);
    }

    @Override // p034j$.util.stream.InterfaceC2928z1, p034j$.util.stream.InterfaceC2631A1
    public InterfaceC2932t spliterator() {
        return AbstractC2549I.m632j(this.f840a, 0, this.f841b, 1040);
    }

    public String toString() {
        return String.format("DoubleArrayNode[%d][%s]", Integer.valueOf(this.f840a.length - this.f841b), Arrays.toString(this.f840a));
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2631A1 mo294b(int i) {
        mo294b(i);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    public InterfaceC2625s spliterator() {
        return AbstractC2549I.m632j(this.f840a, 0, this.f841b, 1040);
    }
}
