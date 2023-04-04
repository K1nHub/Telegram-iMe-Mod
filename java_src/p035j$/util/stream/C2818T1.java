package p035j$.util.stream;

import java.util.Arrays;
import p035j$.util.AbstractC2625I;
import p035j$.util.InterfaceC2701s;
import p035j$.util.InterfaceC3008t;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2668f;
import p035j$.util.function.InterfaceC2675m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.T1 */
/* loaded from: classes2.dex */
public class C2818T1 implements InterfaceC2974u1 {

    /* renamed from: a */
    final double[] f845a;

    /* renamed from: b */
    int f846b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2818T1(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f845a = new double[(int) j];
        this.f846b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2818T1(double[] dArr) {
        this.f845a = dArr;
        this.f846b = dArr.length;
    }

    @Override // p035j$.util.stream.InterfaceC3004z1, p035j$.util.stream.InterfaceC2707A1
    /* renamed from: b */
    public InterfaceC3004z1 mo289b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    public long count() {
        return this.f846b;
    }

    @Override // p035j$.util.stream.InterfaceC3004z1
    /* renamed from: d */
    public void mo287d(Object obj, int i) {
        System.arraycopy(this.f845a, 0, (double[]) obj, i, this.f846b);
    }

    @Override // p035j$.util.stream.InterfaceC3004z1
    /* renamed from: e */
    public Object mo286e() {
        double[] dArr = this.f845a;
        int length = dArr.length;
        int i = this.f846b;
        return length == i ? dArr : Arrays.copyOf(dArr, i);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: f */
    public /* synthetic */ void mo331i(Double[] dArr, int i) {
        AbstractC2938o1.m361h(this, dArr, i);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2938o1.m358k(this, consumer);
    }

    @Override // p035j$.util.stream.InterfaceC3004z1
    /* renamed from: g */
    public void mo285g(Object obj) {
        InterfaceC2668f interfaceC2668f = (InterfaceC2668f) obj;
        for (int i = 0; i < this.f846b; i++) {
            interfaceC2668f.accept(this.f845a[i]);
        }
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: k */
    public /* synthetic */ InterfaceC2974u1 mo327r(long j, long j2, InterfaceC2675m interfaceC2675m) {
        return AbstractC2938o1.m355n(this, j, j2, interfaceC2675m);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: p */
    public /* synthetic */ int mo329p() {
        return 0;
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo328q(InterfaceC2675m interfaceC2675m) {
        return AbstractC2938o1.m362g(this, interfaceC2675m);
    }

    @Override // p035j$.util.stream.InterfaceC3004z1, p035j$.util.stream.InterfaceC2707A1
    public InterfaceC3008t spliterator() {
        return AbstractC2625I.m627j(this.f845a, 0, this.f846b, 1040);
    }

    public String toString() {
        return String.format("DoubleArrayNode[%d][%s]", Integer.valueOf(this.f845a.length - this.f846b), Arrays.toString(this.f845a));
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2707A1 mo289b(int i) {
        mo289b(i);
        throw null;
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    public InterfaceC2701s spliterator() {
        return AbstractC2625I.m627j(this.f845a, 0, this.f846b, 1040);
    }
}
