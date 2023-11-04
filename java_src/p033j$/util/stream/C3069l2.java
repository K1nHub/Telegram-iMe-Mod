package p033j$.util.stream;

import java.util.Arrays;
import p033j$.util.AbstractC2773F;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2830p;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l2 */
/* loaded from: classes2.dex */
public class C3069l2 implements InterfaceC3146y1 {

    /* renamed from: a */
    final long[] f1126a;

    /* renamed from: b */
    int f1127b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3069l2(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f1126a = new long[(int) j];
        this.f1127b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3069l2(long[] jArr) {
        this.f1126a = jArr;
        this.f1127b = jArr.length;
    }

    @Override // p033j$.util.stream.InterfaceC3152z1, p033j$.util.stream.InterfaceC2855A1
    /* renamed from: b */
    public InterfaceC3152z1 mo344b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    public long count() {
        return this.f1127b;
    }

    @Override // p033j$.util.stream.InterfaceC3152z1
    /* renamed from: d */
    public void mo342d(Object obj, int i) {
        System.arraycopy(this.f1126a, 0, (long[]) obj, i, this.f1127b);
    }

    @Override // p033j$.util.stream.InterfaceC3152z1
    /* renamed from: e */
    public Object mo341e() {
        long[] jArr = this.f1126a;
        int length = jArr.length;
        int i = this.f1127b;
        return length == i ? jArr : Arrays.copyOf(jArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3086o1.m411m(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3152z1
    /* renamed from: g */
    public void mo340g(Object obj) {
        InterfaceC2830p interfaceC2830p = (InterfaceC2830p) obj;
        for (int i = 0; i < this.f1127b; i++) {
            interfaceC2830p.accept(this.f1126a[i]);
        }
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    /* renamed from: j */
    public /* synthetic */ void mo386i(Long[] lArr, int i) {
        AbstractC3086o1.m414j(this, lArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    /* renamed from: k */
    public /* synthetic */ InterfaceC3146y1 mo382q(long j, long j2, IntFunction intFunction) {
        return AbstractC3086o1.m408p(this, j, j2, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    /* renamed from: n */
    public /* synthetic */ int mo384n() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    /* renamed from: p */
    public /* synthetic */ Object[] mo383p(IntFunction intFunction) {
        return AbstractC3086o1.m417g(this, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC3152z1, p033j$.util.stream.InterfaceC2855A1
    public Spliterator.InterfaceC2779d spliterator() {
        return AbstractC2773F.m674l(this.f1126a, 0, this.f1127b, 1040);
    }

    public String toString() {
        return String.format("LongArrayNode[%d][%s]", Integer.valueOf(this.f1126a.length - this.f1127b), Arrays.toString(this.f1126a));
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2855A1 mo344b(int i) {
        mo344b(i);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    public Spliterator spliterator() {
        return AbstractC2773F.m674l(this.f1126a, 0, this.f1127b, 1040);
    }
}
