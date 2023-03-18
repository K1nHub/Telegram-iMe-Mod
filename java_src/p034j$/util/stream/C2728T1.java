package p034j$.util.stream;

import java.util.Arrays;
import p034j$.util.AbstractC2535I;
import p034j$.util.InterfaceC2611s;
import p034j$.util.InterfaceC2918t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2578f;
import p034j$.util.function.InterfaceC2585m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.T1 */
/* loaded from: classes2.dex */
public class C2728T1 implements InterfaceC2884u1 {

    /* renamed from: a */
    final double[] f839a;

    /* renamed from: b */
    int f840b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2728T1(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f839a = new double[(int) j];
        this.f840b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2728T1(double[] dArr) {
        this.f839a = dArr;
        this.f840b = dArr.length;
    }

    @Override // p034j$.util.stream.InterfaceC2914z1, p034j$.util.stream.InterfaceC2617A1
    /* renamed from: b */
    public InterfaceC2914z1 mo295b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    public long count() {
        return this.f840b;
    }

    @Override // p034j$.util.stream.InterfaceC2914z1
    /* renamed from: d */
    public void mo293d(Object obj, int i) {
        System.arraycopy(this.f839a, 0, (double[]) obj, i, this.f840b);
    }

    @Override // p034j$.util.stream.InterfaceC2914z1
    /* renamed from: e */
    public Object mo292e() {
        double[] dArr = this.f839a;
        int length = dArr.length;
        int i = this.f840b;
        return length == i ? dArr : Arrays.copyOf(dArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: f */
    public /* synthetic */ void mo337i(Double[] dArr, int i) {
        AbstractC2848o1.m367h(this, dArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2848o1.m364k(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2914z1
    /* renamed from: g */
    public void mo291g(Object obj) {
        InterfaceC2578f interfaceC2578f = (InterfaceC2578f) obj;
        for (int i = 0; i < this.f840b; i++) {
            interfaceC2578f.accept(this.f839a[i]);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: k */
    public /* synthetic */ InterfaceC2884u1 mo333r(long j, long j2, InterfaceC2585m interfaceC2585m) {
        return AbstractC2848o1.m361n(this, j, j2, interfaceC2585m);
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: p */
    public /* synthetic */ int mo335p() {
        return 0;
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo334q(InterfaceC2585m interfaceC2585m) {
        return AbstractC2848o1.m368g(this, interfaceC2585m);
    }

    @Override // p034j$.util.stream.InterfaceC2914z1, p034j$.util.stream.InterfaceC2617A1
    public InterfaceC2918t spliterator() {
        return AbstractC2535I.m633j(this.f839a, 0, this.f840b, 1040);
    }

    public String toString() {
        return String.format("DoubleArrayNode[%d][%s]", Integer.valueOf(this.f839a.length - this.f840b), Arrays.toString(this.f839a));
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2617A1 mo295b(int i) {
        mo295b(i);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    public InterfaceC2611s spliterator() {
        return AbstractC2535I.m633j(this.f839a, 0, this.f840b, 1040);
    }
}
