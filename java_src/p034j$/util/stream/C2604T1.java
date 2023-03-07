package p034j$.util.stream;

import java.util.Arrays;
import p034j$.util.AbstractC2411I;
import p034j$.util.InterfaceC2487s;
import p034j$.util.InterfaceC2794t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2454f;
import p034j$.util.function.InterfaceC2461m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.T1 */
/* loaded from: classes2.dex */
public class C2604T1 implements InterfaceC2760u1 {

    /* renamed from: a */
    final double[] f834a;

    /* renamed from: b */
    int f835b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2604T1(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f834a = new double[(int) j];
        this.f835b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2604T1(double[] dArr) {
        this.f834a = dArr;
        this.f835b = dArr.length;
    }

    @Override // p034j$.util.stream.InterfaceC2790z1, p034j$.util.stream.InterfaceC2493A1
    /* renamed from: b */
    public InterfaceC2790z1 mo295b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    public long count() {
        return this.f835b;
    }

    @Override // p034j$.util.stream.InterfaceC2790z1
    /* renamed from: d */
    public void mo293d(Object obj, int i) {
        System.arraycopy(this.f834a, 0, (double[]) obj, i, this.f835b);
    }

    @Override // p034j$.util.stream.InterfaceC2790z1
    /* renamed from: e */
    public Object mo292e() {
        double[] dArr = this.f834a;
        int length = dArr.length;
        int i = this.f835b;
        return length == i ? dArr : Arrays.copyOf(dArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: f */
    public /* synthetic */ void mo337i(Double[] dArr, int i) {
        AbstractC2724o1.m367h(this, dArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2724o1.m364k(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2790z1
    /* renamed from: g */
    public void mo291g(Object obj) {
        InterfaceC2454f interfaceC2454f = (InterfaceC2454f) obj;
        for (int i = 0; i < this.f835b; i++) {
            interfaceC2454f.accept(this.f834a[i]);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: k */
    public /* synthetic */ InterfaceC2760u1 mo333r(long j, long j2, InterfaceC2461m interfaceC2461m) {
        return AbstractC2724o1.m361n(this, j, j2, interfaceC2461m);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: p */
    public /* synthetic */ int mo335p() {
        return 0;
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo334q(InterfaceC2461m interfaceC2461m) {
        return AbstractC2724o1.m368g(this, interfaceC2461m);
    }

    @Override // p034j$.util.stream.InterfaceC2790z1, p034j$.util.stream.InterfaceC2493A1
    public InterfaceC2794t spliterator() {
        return AbstractC2411I.m633j(this.f834a, 0, this.f835b, 1040);
    }

    public String toString() {
        return String.format("DoubleArrayNode[%d][%s]", Integer.valueOf(this.f834a.length - this.f835b), Arrays.toString(this.f834a));
    }

    @Override // p034j$.util.stream.InterfaceC2790z1, p034j$.util.stream.InterfaceC2493A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2493A1 mo295b(int i) {
        mo295b(i);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2790z1, p034j$.util.stream.InterfaceC2493A1
    public InterfaceC2487s spliterator() {
        return AbstractC2411I.m633j(this.f834a, 0, this.f835b, 1040);
    }
}
