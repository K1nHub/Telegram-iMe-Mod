package p033j$.util.stream;

import java.util.Arrays;
import p033j$.util.AbstractC2769F;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2826p;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l2 */
/* loaded from: classes2.dex */
public class C3065l2 implements InterfaceC3142y1 {

    /* renamed from: a */
    final long[] f1126a;

    /* renamed from: b */
    int f1127b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3065l2(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f1126a = new long[(int) j];
        this.f1127b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3065l2(long[] jArr) {
        this.f1126a = jArr;
        this.f1127b = jArr.length;
    }

    @Override // p033j$.util.stream.InterfaceC3148z1, p033j$.util.stream.InterfaceC2851A1
    /* renamed from: b */
    public InterfaceC3148z1 mo343b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    public long count() {
        return this.f1127b;
    }

    @Override // p033j$.util.stream.InterfaceC3148z1
    /* renamed from: d */
    public void mo341d(Object obj, int i) {
        System.arraycopy(this.f1126a, 0, (long[]) obj, i, this.f1127b);
    }

    @Override // p033j$.util.stream.InterfaceC3148z1
    /* renamed from: e */
    public Object mo340e() {
        long[] jArr = this.f1126a;
        int length = jArr.length;
        int i = this.f1127b;
        return length == i ? jArr : Arrays.copyOf(jArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3082o1.m410m(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3148z1
    /* renamed from: g */
    public void mo339g(Object obj) {
        InterfaceC2826p interfaceC2826p = (InterfaceC2826p) obj;
        for (int i = 0; i < this.f1127b; i++) {
            interfaceC2826p.accept(this.f1126a[i]);
        }
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: j */
    public /* synthetic */ void mo385i(Long[] lArr, int i) {
        AbstractC3082o1.m413j(this, lArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: k */
    public /* synthetic */ InterfaceC3142y1 mo381q(long j, long j2, IntFunction intFunction) {
        return AbstractC3082o1.m407p(this, j, j2, intFunction);
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
        return AbstractC2769F.m673l(this.f1126a, 0, this.f1127b, 1040);
    }

    public String toString() {
        return String.format("LongArrayNode[%d][%s]", Integer.valueOf(this.f1126a.length - this.f1127b), Arrays.toString(this.f1126a));
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2851A1 mo343b(int i) {
        mo343b(i);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    public Spliterator spliterator() {
        return AbstractC2769F.m673l(this.f1126a, 0, this.f1127b, 1040);
    }
}
