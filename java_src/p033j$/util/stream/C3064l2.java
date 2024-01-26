package p033j$.util.stream;

import java.util.Arrays;
import p033j$.util.AbstractC2768F;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2825p;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l2 */
/* loaded from: classes2.dex */
public class C3064l2 implements InterfaceC3141y1 {

    /* renamed from: a */
    final long[] f1126a;

    /* renamed from: b */
    int f1127b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3064l2(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f1126a = new long[(int) j];
        this.f1127b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3064l2(long[] jArr) {
        this.f1126a = jArr;
        this.f1127b = jArr.length;
    }

    @Override // p033j$.util.stream.InterfaceC3147z1, p033j$.util.stream.InterfaceC2850A1
    /* renamed from: b */
    public InterfaceC3147z1 mo347b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    public long count() {
        return this.f1127b;
    }

    @Override // p033j$.util.stream.InterfaceC3147z1
    /* renamed from: d */
    public void mo345d(Object obj, int i) {
        System.arraycopy(this.f1126a, 0, (long[]) obj, i, this.f1127b);
    }

    @Override // p033j$.util.stream.InterfaceC3147z1
    /* renamed from: e */
    public Object mo344e() {
        long[] jArr = this.f1126a;
        int length = jArr.length;
        int i = this.f1127b;
        return length == i ? jArr : Arrays.copyOf(jArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3081o1.m414m(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3147z1
    /* renamed from: g */
    public void mo343g(Object obj) {
        InterfaceC2825p interfaceC2825p = (InterfaceC2825p) obj;
        for (int i = 0; i < this.f1127b; i++) {
            interfaceC2825p.accept(this.f1126a[i]);
        }
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: j */
    public /* synthetic */ void mo389i(Long[] lArr, int i) {
        AbstractC3081o1.m417j(this, lArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: k */
    public /* synthetic */ InterfaceC3141y1 mo385q(long j, long j2, IntFunction intFunction) {
        return AbstractC3081o1.m411p(this, j, j2, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: n */
    public /* synthetic */ int mo387n() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: p */
    public /* synthetic */ Object[] mo386p(IntFunction intFunction) {
        return AbstractC3081o1.m420g(this, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC3147z1, p033j$.util.stream.InterfaceC2850A1
    public Spliterator.InterfaceC2774d spliterator() {
        return AbstractC2768F.m677l(this.f1126a, 0, this.f1127b, 1040);
    }

    public String toString() {
        return String.format("LongArrayNode[%d][%s]", Integer.valueOf(this.f1126a.length - this.f1127b), Arrays.toString(this.f1126a));
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2850A1 mo347b(int i) {
        mo347b(i);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    public Spliterator spliterator() {
        return AbstractC2768F.m677l(this.f1126a, 0, this.f1127b, 1040);
    }
}
