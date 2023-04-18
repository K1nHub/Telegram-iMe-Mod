package p034j$.util.stream;

import java.util.Arrays;
import p034j$.util.AbstractC2612I;
import p034j$.util.InterfaceC2688s;
import p034j$.util.InterfaceC2995t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2662m;
import p034j$.util.function.InterfaceC2666q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l2 */
/* loaded from: classes2.dex */
public class C2908l2 implements InterfaceC2985y1 {

    /* renamed from: a */
    final long[] f988a;

    /* renamed from: b */
    int f989b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2908l2(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f988a = new long[(int) j];
        this.f989b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2908l2(long[] jArr) {
        this.f988a = jArr;
        this.f989b = jArr.length;
    }

    @Override // p034j$.util.stream.InterfaceC2991z1, p034j$.util.stream.InterfaceC2694A1
    /* renamed from: b */
    public InterfaceC2991z1 mo275b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    public long count() {
        return this.f989b;
    }

    @Override // p034j$.util.stream.InterfaceC2991z1
    /* renamed from: d */
    public void mo273d(Object obj, int i) {
        System.arraycopy(this.f988a, 0, (long[]) obj, i, this.f989b);
    }

    @Override // p034j$.util.stream.InterfaceC2991z1
    /* renamed from: e */
    public Object mo272e() {
        long[] jArr = this.f988a;
        int length = jArr.length;
        int i = this.f989b;
        return length == i ? jArr : Arrays.copyOf(jArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2925o1.m342m(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2991z1
    /* renamed from: g */
    public void mo271g(Object obj) {
        InterfaceC2666q interfaceC2666q = (InterfaceC2666q) obj;
        for (int i = 0; i < this.f989b; i++) {
            interfaceC2666q.accept(this.f988a[i]);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: j */
    public /* synthetic */ void mo317i(Long[] lArr, int i) {
        AbstractC2925o1.m345j(this, lArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: k */
    public /* synthetic */ InterfaceC2985y1 mo313r(long j, long j2, InterfaceC2662m interfaceC2662m) {
        return AbstractC2925o1.m339p(this, j, j2, interfaceC2662m);
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: p */
    public /* synthetic */ int mo315p() {
        return 0;
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo314q(InterfaceC2662m interfaceC2662m) {
        return AbstractC2925o1.m348g(this, interfaceC2662m);
    }

    @Override // p034j$.util.stream.InterfaceC2991z1, p034j$.util.stream.InterfaceC2694A1
    public InterfaceC2995t spliterator() {
        return AbstractC2612I.m611l(this.f988a, 0, this.f989b, 1040);
    }

    public String toString() {
        return String.format("LongArrayNode[%d][%s]", Integer.valueOf(this.f988a.length - this.f989b), Arrays.toString(this.f988a));
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2694A1 mo275b(int i) {
        mo275b(i);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    public InterfaceC2688s spliterator() {
        return AbstractC2612I.m611l(this.f988a, 0, this.f989b, 1040);
    }
}
