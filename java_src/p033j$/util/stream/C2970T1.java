package p033j$.util.stream;

import java.util.Arrays;
import p033j$.util.AbstractC2777I;
import p033j$.util.InterfaceC2853s;
import p033j$.util.InterfaceC3160t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2820f;
import p033j$.util.function.InterfaceC2827m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.T1 */
/* loaded from: classes2.dex */
public class C2970T1 implements InterfaceC3126u1 {

    /* renamed from: a */
    final double[] f928a;

    /* renamed from: b */
    int f929b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2970T1(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f928a = new double[(int) j];
        this.f929b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2970T1(double[] dArr) {
        this.f928a = dArr;
        this.f929b = dArr.length;
    }

    @Override // p033j$.util.stream.InterfaceC3156z1, p033j$.util.stream.InterfaceC2859A1
    /* renamed from: b */
    public InterfaceC3156z1 mo298b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public long count() {
        return this.f929b;
    }

    @Override // p033j$.util.stream.InterfaceC3156z1
    /* renamed from: d */
    public void mo296d(Object obj, int i) {
        System.arraycopy(this.f928a, 0, (double[]) obj, i, this.f929b);
    }

    @Override // p033j$.util.stream.InterfaceC3156z1
    /* renamed from: e */
    public Object mo295e() {
        double[] dArr = this.f928a;
        int length = dArr.length;
        int i = this.f929b;
        return length == i ? dArr : Arrays.copyOf(dArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: f */
    public /* synthetic */ void mo340i(Double[] dArr, int i) {
        AbstractC3090o1.m370h(this, dArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3090o1.m367k(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3156z1
    /* renamed from: g */
    public void mo294g(Object obj) {
        InterfaceC2820f interfaceC2820f = (InterfaceC2820f) obj;
        for (int i = 0; i < this.f929b; i++) {
            interfaceC2820f.accept(this.f928a[i]);
        }
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: k */
    public /* synthetic */ InterfaceC3126u1 mo336r(long j, long j2, InterfaceC2827m interfaceC2827m) {
        return AbstractC3090o1.m364n(this, j, j2, interfaceC2827m);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: p */
    public /* synthetic */ int mo338p() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo337q(InterfaceC2827m interfaceC2827m) {
        return AbstractC3090o1.m371g(this, interfaceC2827m);
    }

    @Override // p033j$.util.stream.InterfaceC3156z1, p033j$.util.stream.InterfaceC2859A1
    public InterfaceC3160t spliterator() {
        return AbstractC2777I.m635j(this.f928a, 0, this.f929b, 1040);
    }

    public String toString() {
        return String.format("DoubleArrayNode[%d][%s]", Integer.valueOf(this.f928a.length - this.f929b), Arrays.toString(this.f928a));
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2859A1 mo298b(int i) {
        mo298b(i);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public InterfaceC2853s spliterator() {
        return AbstractC2777I.m635j(this.f928a, 0, this.f929b, 1040);
    }
}
