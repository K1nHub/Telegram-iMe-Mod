package p034j$.util.stream;

import java.util.Arrays;
import p034j$.util.AbstractC2656I;
import p034j$.util.InterfaceC2732s;
import p034j$.util.InterfaceC3039t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2699f;
import p034j$.util.function.InterfaceC2706m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.T1 */
/* loaded from: classes2.dex */
public class C2849T1 implements InterfaceC3005u1 {

    /* renamed from: a */
    final double[] f843a;

    /* renamed from: b */
    int f844b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2849T1(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f843a = new double[(int) j];
        this.f844b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2849T1(double[] dArr) {
        this.f843a = dArr;
        this.f844b = dArr.length;
    }

    @Override // p034j$.util.stream.InterfaceC3035z1, p034j$.util.stream.InterfaceC2738A1
    /* renamed from: b */
    public InterfaceC3035z1 mo280b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    public long count() {
        return this.f844b;
    }

    @Override // p034j$.util.stream.InterfaceC3035z1
    /* renamed from: d */
    public void mo278d(Object obj, int i) {
        System.arraycopy(this.f843a, 0, (double[]) obj, i, this.f844b);
    }

    @Override // p034j$.util.stream.InterfaceC3035z1
    /* renamed from: e */
    public Object mo277e() {
        double[] dArr = this.f843a;
        int length = dArr.length;
        int i = this.f844b;
        return length == i ? dArr : Arrays.copyOf(dArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: f */
    public /* synthetic */ void mo322i(Double[] dArr, int i) {
        AbstractC2969o1.m352h(this, dArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2969o1.m349k(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC3035z1
    /* renamed from: g */
    public void mo276g(Object obj) {
        InterfaceC2699f interfaceC2699f = (InterfaceC2699f) obj;
        for (int i = 0; i < this.f844b; i++) {
            interfaceC2699f.accept(this.f843a[i]);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: k */
    public /* synthetic */ InterfaceC3005u1 mo318r(long j, long j2, InterfaceC2706m interfaceC2706m) {
        return AbstractC2969o1.m346n(this, j, j2, interfaceC2706m);
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: p */
    public /* synthetic */ int mo320p() {
        return 0;
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo319q(InterfaceC2706m interfaceC2706m) {
        return AbstractC2969o1.m353g(this, interfaceC2706m);
    }

    @Override // p034j$.util.stream.InterfaceC3035z1, p034j$.util.stream.InterfaceC2738A1
    public InterfaceC3039t spliterator() {
        return AbstractC2656I.m617j(this.f843a, 0, this.f844b, 1040);
    }

    public String toString() {
        return String.format("DoubleArrayNode[%d][%s]", Integer.valueOf(this.f843a.length - this.f844b), Arrays.toString(this.f843a));
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2738A1 mo280b(int i) {
        mo280b(i);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    public InterfaceC2732s spliterator() {
        return AbstractC2656I.m617j(this.f843a, 0, this.f844b, 1040);
    }
}
