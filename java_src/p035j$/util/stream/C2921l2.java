package p035j$.util.stream;

import java.util.Arrays;
import p035j$.util.AbstractC2625I;
import p035j$.util.InterfaceC2701s;
import p035j$.util.InterfaceC3008t;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2675m;
import p035j$.util.function.InterfaceC2679q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l2 */
/* loaded from: classes2.dex */
public class C2921l2 implements InterfaceC2998y1 {

    /* renamed from: a */
    final long[] f993a;

    /* renamed from: b */
    int f994b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2921l2(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f993a = new long[(int) j];
        this.f994b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2921l2(long[] jArr) {
        this.f993a = jArr;
        this.f994b = jArr.length;
    }

    @Override // p035j$.util.stream.InterfaceC3004z1, p035j$.util.stream.InterfaceC2707A1
    /* renamed from: b */
    public InterfaceC3004z1 mo289b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    public long count() {
        return this.f994b;
    }

    @Override // p035j$.util.stream.InterfaceC3004z1
    /* renamed from: d */
    public void mo287d(Object obj, int i) {
        System.arraycopy(this.f993a, 0, (long[]) obj, i, this.f994b);
    }

    @Override // p035j$.util.stream.InterfaceC3004z1
    /* renamed from: e */
    public Object mo286e() {
        long[] jArr = this.f993a;
        int length = jArr.length;
        int i = this.f994b;
        return length == i ? jArr : Arrays.copyOf(jArr, i);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2938o1.m356m(this, consumer);
    }

    @Override // p035j$.util.stream.InterfaceC3004z1
    /* renamed from: g */
    public void mo285g(Object obj) {
        InterfaceC2679q interfaceC2679q = (InterfaceC2679q) obj;
        for (int i = 0; i < this.f994b; i++) {
            interfaceC2679q.accept(this.f993a[i]);
        }
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: j */
    public /* synthetic */ void mo331i(Long[] lArr, int i) {
        AbstractC2938o1.m359j(this, lArr, i);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: k */
    public /* synthetic */ InterfaceC2998y1 mo327r(long j, long j2, InterfaceC2675m interfaceC2675m) {
        return AbstractC2938o1.m353p(this, j, j2, interfaceC2675m);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: p */
    public /* synthetic */ int mo329p() {
        return 0;
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo328q(InterfaceC2675m interfaceC2675m) {
        return AbstractC2938o1.m362g(this, interfaceC2675m);
    }

    @Override // p035j$.util.stream.InterfaceC3004z1, p035j$.util.stream.InterfaceC2707A1
    public InterfaceC3008t spliterator() {
        return AbstractC2625I.m625l(this.f993a, 0, this.f994b, 1040);
    }

    public String toString() {
        return String.format("LongArrayNode[%d][%s]", Integer.valueOf(this.f993a.length - this.f994b), Arrays.toString(this.f993a));
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2707A1 mo289b(int i) {
        mo289b(i);
        throw null;
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    public InterfaceC2701s spliterator() {
        return AbstractC2625I.m625l(this.f993a, 0, this.f994b, 1040);
    }
}
