package p034j$.util.stream;

import java.util.Arrays;
import p034j$.util.AbstractC2656I;
import p034j$.util.InterfaceC2732s;
import p034j$.util.InterfaceC3039t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2705l;
import p034j$.util.function.InterfaceC2706m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.c2 */
/* loaded from: classes2.dex */
public class C2898c2 implements InterfaceC3017w1 {

    /* renamed from: a */
    final int[] f898a;

    /* renamed from: b */
    int f899b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2898c2(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f898a = new int[(int) j];
        this.f899b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2898c2(int[] iArr) {
        this.f898a = iArr;
        this.f899b = iArr.length;
    }

    @Override // p034j$.util.stream.InterfaceC3035z1, p034j$.util.stream.InterfaceC2738A1
    /* renamed from: b */
    public InterfaceC3035z1 mo280b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    public long count() {
        return this.f899b;
    }

    @Override // p034j$.util.stream.InterfaceC3035z1
    /* renamed from: d */
    public void mo278d(Object obj, int i) {
        System.arraycopy(this.f898a, 0, (int[]) obj, i, this.f899b);
    }

    @Override // p034j$.util.stream.InterfaceC3035z1
    /* renamed from: e */
    public Object mo277e() {
        int[] iArr = this.f898a;
        int length = iArr.length;
        int i = this.f899b;
        return length == i ? iArr : Arrays.copyOf(iArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: f */
    public /* synthetic */ void mo322i(Integer[] numArr, int i) {
        AbstractC2969o1.m351i(this, numArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2969o1.m348l(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC3035z1
    /* renamed from: g */
    public void mo276g(Object obj) {
        InterfaceC2705l interfaceC2705l = (InterfaceC2705l) obj;
        for (int i = 0; i < this.f899b; i++) {
            interfaceC2705l.accept(this.f898a[i]);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: j */
    public /* synthetic */ InterfaceC3017w1 mo318r(long j, long j2, InterfaceC2706m interfaceC2706m) {
        return AbstractC2969o1.m345o(this, j, j2, interfaceC2706m);
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
        return AbstractC2656I.m616k(this.f898a, 0, this.f899b, 1040);
    }

    public String toString() {
        return String.format("IntArrayNode[%d][%s]", Integer.valueOf(this.f898a.length - this.f899b), Arrays.toString(this.f898a));
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2738A1 mo280b(int i) {
        mo280b(i);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    public InterfaceC2732s spliterator() {
        return AbstractC2656I.m616k(this.f898a, 0, this.f899b, 1040);
    }
}
