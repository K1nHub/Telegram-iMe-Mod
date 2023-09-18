package p033j$.util.stream;

import java.util.Arrays;
import p033j$.util.AbstractC2832I;
import p033j$.util.InterfaceC2908s;
import p033j$.util.InterfaceC3215t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2875f;
import p033j$.util.function.InterfaceC2882m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.T1 */
/* loaded from: classes2.dex */
public class C3025T1 implements InterfaceC3181u1 {

    /* renamed from: a */
    final double[] f929a;

    /* renamed from: b */
    int f930b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3025T1(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f929a = new double[(int) j];
        this.f930b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3025T1(double[] dArr) {
        this.f929a = dArr;
        this.f930b = dArr.length;
    }

    @Override // p033j$.util.stream.InterfaceC3211z1, p033j$.util.stream.InterfaceC2914A1
    /* renamed from: b */
    public InterfaceC3211z1 mo298b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    public long count() {
        return this.f930b;
    }

    @Override // p033j$.util.stream.InterfaceC3211z1
    /* renamed from: d */
    public void mo296d(Object obj, int i) {
        System.arraycopy(this.f929a, 0, (double[]) obj, i, this.f930b);
    }

    @Override // p033j$.util.stream.InterfaceC3211z1
    /* renamed from: e */
    public Object mo295e() {
        double[] dArr = this.f929a;
        int length = dArr.length;
        int i = this.f930b;
        return length == i ? dArr : Arrays.copyOf(dArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: f */
    public /* synthetic */ void mo340i(Double[] dArr, int i) {
        AbstractC3145o1.m370h(this, dArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3145o1.m367k(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3211z1
    /* renamed from: g */
    public void mo294g(Object obj) {
        InterfaceC2875f interfaceC2875f = (InterfaceC2875f) obj;
        for (int i = 0; i < this.f930b; i++) {
            interfaceC2875f.accept(this.f929a[i]);
        }
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: k */
    public /* synthetic */ InterfaceC3181u1 mo336r(long j, long j2, InterfaceC2882m interfaceC2882m) {
        return AbstractC3145o1.m364n(this, j, j2, interfaceC2882m);
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: p */
    public /* synthetic */ int mo338p() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo337q(InterfaceC2882m interfaceC2882m) {
        return AbstractC3145o1.m371g(this, interfaceC2882m);
    }

    @Override // p033j$.util.stream.InterfaceC3211z1, p033j$.util.stream.InterfaceC2914A1
    public InterfaceC3215t spliterator() {
        return AbstractC2832I.m635j(this.f929a, 0, this.f930b, 1040);
    }

    public String toString() {
        return String.format("DoubleArrayNode[%d][%s]", Integer.valueOf(this.f929a.length - this.f930b), Arrays.toString(this.f929a));
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2914A1 mo298b(int i) {
        mo298b(i);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    public InterfaceC2908s spliterator() {
        return AbstractC2832I.m635j(this.f929a, 0, this.f930b, 1040);
    }
}
