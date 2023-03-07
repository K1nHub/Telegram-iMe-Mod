package p034j$.util.stream;

import java.util.Arrays;
import p034j$.util.AbstractC2411I;
import p034j$.util.InterfaceC2487s;
import p034j$.util.InterfaceC2794t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2461m;
import p034j$.util.function.InterfaceC2465q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l2 */
/* loaded from: classes2.dex */
public class C2707l2 implements InterfaceC2784y1 {

    /* renamed from: a */
    final long[] f982a;

    /* renamed from: b */
    int f983b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2707l2(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f982a = new long[(int) j];
        this.f983b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2707l2(long[] jArr) {
        this.f982a = jArr;
        this.f983b = jArr.length;
    }

    @Override // p034j$.util.stream.InterfaceC2790z1, p034j$.util.stream.InterfaceC2493A1
    /* renamed from: b */
    public InterfaceC2790z1 mo295b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    public long count() {
        return this.f983b;
    }

    @Override // p034j$.util.stream.InterfaceC2790z1
    /* renamed from: d */
    public void mo293d(Object obj, int i) {
        System.arraycopy(this.f982a, 0, (long[]) obj, i, this.f983b);
    }

    @Override // p034j$.util.stream.InterfaceC2790z1
    /* renamed from: e */
    public Object mo292e() {
        long[] jArr = this.f982a;
        int length = jArr.length;
        int i = this.f983b;
        return length == i ? jArr : Arrays.copyOf(jArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2724o1.m362m(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2790z1
    /* renamed from: g */
    public void mo291g(Object obj) {
        InterfaceC2465q interfaceC2465q = (InterfaceC2465q) obj;
        for (int i = 0; i < this.f983b; i++) {
            interfaceC2465q.accept(this.f982a[i]);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: j */
    public /* synthetic */ void mo337i(Long[] lArr, int i) {
        AbstractC2724o1.m365j(this, lArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2493A1
    /* renamed from: k */
    public /* synthetic */ InterfaceC2784y1 mo333r(long j, long j2, InterfaceC2461m interfaceC2461m) {
        return AbstractC2724o1.m359p(this, j, j2, interfaceC2461m);
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
        return AbstractC2411I.m631l(this.f982a, 0, this.f983b, 1040);
    }

    public String toString() {
        return String.format("LongArrayNode[%d][%s]", Integer.valueOf(this.f982a.length - this.f983b), Arrays.toString(this.f982a));
    }

    @Override // p034j$.util.stream.InterfaceC2790z1, p034j$.util.stream.InterfaceC2493A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2493A1 mo295b(int i) {
        mo295b(i);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2790z1, p034j$.util.stream.InterfaceC2493A1
    public InterfaceC2487s spliterator() {
        return AbstractC2411I.m631l(this.f982a, 0, this.f983b, 1040);
    }
}
