package p033j$.util.stream;

import java.util.Arrays;
import p033j$.util.AbstractC2916I;
import p033j$.util.InterfaceC2992s;
import p033j$.util.InterfaceC3299t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2959f;
import p033j$.util.function.InterfaceC2966m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.T1 */
/* loaded from: classes2.dex */
public class C3109T1 implements InterfaceC3265u1 {

    /* renamed from: a */
    final double[] f938a;

    /* renamed from: b */
    int f939b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3109T1(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f938a = new double[(int) j];
        this.f939b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3109T1(double[] dArr) {
        this.f938a = dArr;
        this.f939b = dArr.length;
    }

    @Override // p033j$.util.stream.InterfaceC3295z1, p033j$.util.stream.InterfaceC2998A1
    /* renamed from: b */
    public InterfaceC3295z1 mo298b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    public long count() {
        return this.f939b;
    }

    @Override // p033j$.util.stream.InterfaceC3295z1
    /* renamed from: d */
    public void mo296d(Object obj, int i) {
        System.arraycopy(this.f938a, 0, (double[]) obj, i, this.f939b);
    }

    @Override // p033j$.util.stream.InterfaceC3295z1
    /* renamed from: e */
    public Object mo295e() {
        double[] dArr = this.f938a;
        int length = dArr.length;
        int i = this.f939b;
        return length == i ? dArr : Arrays.copyOf(dArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: f */
    public /* synthetic */ void mo340i(Double[] dArr, int i) {
        AbstractC3229o1.m370h(this, dArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3229o1.m367k(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3295z1
    /* renamed from: g */
    public void mo294g(Object obj) {
        InterfaceC2959f interfaceC2959f = (InterfaceC2959f) obj;
        for (int i = 0; i < this.f939b; i++) {
            interfaceC2959f.accept(this.f938a[i]);
        }
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: k */
    public /* synthetic */ InterfaceC3265u1 mo336r(long j, long j2, InterfaceC2966m interfaceC2966m) {
        return AbstractC3229o1.m364n(this, j, j2, interfaceC2966m);
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: p */
    public /* synthetic */ int mo338p() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo337q(InterfaceC2966m interfaceC2966m) {
        return AbstractC3229o1.m371g(this, interfaceC2966m);
    }

    @Override // p033j$.util.stream.InterfaceC3295z1, p033j$.util.stream.InterfaceC2998A1
    public InterfaceC3299t spliterator() {
        return AbstractC2916I.m635j(this.f938a, 0, this.f939b, 1040);
    }

    public String toString() {
        return String.format("DoubleArrayNode[%d][%s]", Integer.valueOf(this.f938a.length - this.f939b), Arrays.toString(this.f938a));
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2998A1 mo298b(int i) {
        mo298b(i);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    public InterfaceC2992s spliterator() {
        return AbstractC2916I.m635j(this.f938a, 0, this.f939b, 1040);
    }
}
