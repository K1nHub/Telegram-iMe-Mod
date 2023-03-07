package p034j$.util.stream;

import java.util.Arrays;
import p034j$.util.AbstractC2411I;
import p034j$.util.InterfaceC2487s;
import p034j$.util.InterfaceC2794t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2460l;
import p034j$.util.function.InterfaceC2461m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.c2 */
/* loaded from: classes2.dex */
public class C2653c2 implements InterfaceC2772w1 {

    /* renamed from: a */
    final int[] f889a;

    /* renamed from: b */
    int f890b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2653c2(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f889a = new int[(int) j];
        this.f890b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2653c2(int[] iArr) {
        this.f889a = iArr;
        this.f890b = iArr.length;
    }

    @Override // p034j$.util.stream.InterfaceC2790z1, p034j$.util.stream.InterfaceC2493A1
    /* renamed from: b */
    public InterfaceC2790z1 mo295b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    public long count() {
        return this.f890b;
    }

    @Override // p034j$.util.stream.InterfaceC2790z1
    /* renamed from: d */
    public void mo293d(Object obj, int i) {
        System.arraycopy(this.f889a, 0, (int[]) obj, i, this.f890b);
    }

    @Override // p034j$.util.stream.InterfaceC2790z1
    /* renamed from: e */
    public Object mo292e() {
        int[] iArr = this.f889a;
        int length = iArr.length;
        int i = this.f890b;
        return length == i ? iArr : Arrays.copyOf(iArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: f */
    public /* synthetic */ void mo337i(Integer[] numArr, int i) {
        AbstractC2724o1.m366i(this, numArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2724o1.m363l(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2790z1
    /* renamed from: g */
    public void mo291g(Object obj) {
        InterfaceC2460l interfaceC2460l = (InterfaceC2460l) obj;
        for (int i = 0; i < this.f890b; i++) {
            interfaceC2460l.accept(this.f889a[i]);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: j */
    public /* synthetic */ InterfaceC2772w1 mo333r(long j, long j2, InterfaceC2461m interfaceC2461m) {
        return AbstractC2724o1.m360o(this, j, j2, interfaceC2461m);
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
        return AbstractC2411I.m632k(this.f889a, 0, this.f890b, 1040);
    }

    public String toString() {
        return String.format("IntArrayNode[%d][%s]", Integer.valueOf(this.f889a.length - this.f890b), Arrays.toString(this.f889a));
    }

    @Override // p034j$.util.stream.InterfaceC2790z1, p034j$.util.stream.InterfaceC2493A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2493A1 mo295b(int i) {
        mo295b(i);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2790z1, p034j$.util.stream.InterfaceC2493A1
    public InterfaceC2487s spliterator() {
        return AbstractC2411I.m632k(this.f889a, 0, this.f890b, 1040);
    }
}
