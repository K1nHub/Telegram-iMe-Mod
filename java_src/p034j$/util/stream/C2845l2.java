package p034j$.util.stream;

import java.util.Arrays;
import p034j$.util.AbstractC2549I;
import p034j$.util.InterfaceC2625s;
import p034j$.util.InterfaceC2932t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2599m;
import p034j$.util.function.InterfaceC2603q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l2 */
/* loaded from: classes2.dex */
public class C2845l2 implements InterfaceC2922y1 {

    /* renamed from: a */
    final long[] f988a;

    /* renamed from: b */
    int f989b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2845l2(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f988a = new long[(int) j];
        this.f989b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2845l2(long[] jArr) {
        this.f988a = jArr;
        this.f989b = jArr.length;
    }

    @Override // p034j$.util.stream.InterfaceC2928z1, p034j$.util.stream.InterfaceC2631A1
    /* renamed from: b */
    public InterfaceC2928z1 mo294b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    public long count() {
        return this.f989b;
    }

    @Override // p034j$.util.stream.InterfaceC2928z1
    /* renamed from: d */
    public void mo292d(Object obj, int i) {
        System.arraycopy(this.f988a, 0, (long[]) obj, i, this.f989b);
    }

    @Override // p034j$.util.stream.InterfaceC2928z1
    /* renamed from: e */
    public Object mo291e() {
        long[] jArr = this.f988a;
        int length = jArr.length;
        int i = this.f989b;
        return length == i ? jArr : Arrays.copyOf(jArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2862o1.m361m(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2928z1
    /* renamed from: g */
    public void mo290g(Object obj) {
        InterfaceC2603q interfaceC2603q = (InterfaceC2603q) obj;
        for (int i = 0; i < this.f989b; i++) {
            interfaceC2603q.accept(this.f988a[i]);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: j */
    public /* synthetic */ void mo336i(Long[] lArr, int i) {
        AbstractC2862o1.m364j(this, lArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: k */
    public /* synthetic */ InterfaceC2922y1 mo332r(long j, long j2, InterfaceC2599m interfaceC2599m) {
        return AbstractC2862o1.m358p(this, j, j2, interfaceC2599m);
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: p */
    public /* synthetic */ int mo334p() {
        return 0;
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo333q(InterfaceC2599m interfaceC2599m) {
        return AbstractC2862o1.m367g(this, interfaceC2599m);
    }

    @Override // p034j$.util.stream.InterfaceC2928z1, p034j$.util.stream.InterfaceC2631A1
    public InterfaceC2932t spliterator() {
        return AbstractC2549I.m630l(this.f988a, 0, this.f989b, 1040);
    }

    public String toString() {
        return String.format("LongArrayNode[%d][%s]", Integer.valueOf(this.f988a.length - this.f989b), Arrays.toString(this.f988a));
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2631A1 mo294b(int i) {
        mo294b(i);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    public InterfaceC2625s spliterator() {
        return AbstractC2549I.m630l(this.f988a, 0, this.f989b, 1040);
    }
}
