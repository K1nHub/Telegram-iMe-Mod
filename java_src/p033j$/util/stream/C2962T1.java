package p033j$.util.stream;

import java.util.Arrays;
import p033j$.util.AbstractC2769F;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2816f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.T1 */
/* loaded from: classes2.dex */
public class C2962T1 implements InterfaceC3118u1 {

    /* renamed from: a */
    final double[] f978a;

    /* renamed from: b */
    int f979b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2962T1(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f978a = new double[(int) j];
        this.f979b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2962T1(double[] dArr) {
        this.f978a = dArr;
        this.f979b = dArr.length;
    }

    @Override // p033j$.util.stream.InterfaceC3148z1, p033j$.util.stream.InterfaceC2851A1
    /* renamed from: b */
    public InterfaceC3148z1 mo343b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    public long count() {
        return this.f979b;
    }

    @Override // p033j$.util.stream.InterfaceC3148z1
    /* renamed from: d */
    public void mo341d(Object obj, int i) {
        System.arraycopy(this.f978a, 0, (double[]) obj, i, this.f979b);
    }

    @Override // p033j$.util.stream.InterfaceC3148z1
    /* renamed from: e */
    public Object mo340e() {
        double[] dArr = this.f978a;
        int length = dArr.length;
        int i = this.f979b;
        return length == i ? dArr : Arrays.copyOf(dArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: f */
    public /* synthetic */ void mo385i(Double[] dArr, int i) {
        AbstractC3082o1.m415h(this, dArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3082o1.m412k(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3148z1
    /* renamed from: g */
    public void mo339g(Object obj) {
        InterfaceC2816f interfaceC2816f = (InterfaceC2816f) obj;
        for (int i = 0; i < this.f979b; i++) {
            interfaceC2816f.accept(this.f978a[i]);
        }
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: k */
    public /* synthetic */ InterfaceC3118u1 mo381q(long j, long j2, IntFunction intFunction) {
        return AbstractC3082o1.m409n(this, j, j2, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: n */
    public /* synthetic */ int mo383n() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: p */
    public /* synthetic */ Object[] mo382p(IntFunction intFunction) {
        return AbstractC3082o1.m416g(this, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC3148z1, p033j$.util.stream.InterfaceC2851A1
    public Spliterator.InterfaceC2775d spliterator() {
        return AbstractC2769F.m675j(this.f978a, 0, this.f979b, 1040);
    }

    public String toString() {
        return String.format("DoubleArrayNode[%d][%s]", Integer.valueOf(this.f978a.length - this.f979b), Arrays.toString(this.f978a));
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2851A1 mo343b(int i) {
        mo343b(i);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    public Spliterator spliterator() {
        return AbstractC2769F.m675j(this.f978a, 0, this.f979b, 1040);
    }
}
