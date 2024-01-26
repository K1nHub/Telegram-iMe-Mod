package p033j$.util.stream;

import java.util.Arrays;
import p033j$.util.AbstractC2768F;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2821l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.c2 */
/* loaded from: classes2.dex */
public class C3010c2 implements InterfaceC3129w1 {

    /* renamed from: a */
    final int[] f1033a;

    /* renamed from: b */
    int f1034b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3010c2(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f1033a = new int[(int) j];
        this.f1034b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3010c2(int[] iArr) {
        this.f1033a = iArr;
        this.f1034b = iArr.length;
    }

    @Override // p033j$.util.stream.InterfaceC3147z1, p033j$.util.stream.InterfaceC2850A1
    /* renamed from: b */
    public InterfaceC3147z1 mo347b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    public long count() {
        return this.f1034b;
    }

    @Override // p033j$.util.stream.InterfaceC3147z1
    /* renamed from: d */
    public void mo345d(Object obj, int i) {
        System.arraycopy(this.f1033a, 0, (int[]) obj, i, this.f1034b);
    }

    @Override // p033j$.util.stream.InterfaceC3147z1
    /* renamed from: e */
    public Object mo344e() {
        int[] iArr = this.f1033a;
        int length = iArr.length;
        int i = this.f1034b;
        return length == i ? iArr : Arrays.copyOf(iArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: f */
    public /* synthetic */ void mo389i(Integer[] numArr, int i) {
        AbstractC3081o1.m418i(this, numArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3081o1.m415l(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3147z1
    /* renamed from: g */
    public void mo343g(Object obj) {
        InterfaceC2821l interfaceC2821l = (InterfaceC2821l) obj;
        for (int i = 0; i < this.f1034b; i++) {
            interfaceC2821l.accept(this.f1033a[i]);
        }
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: j */
    public /* synthetic */ InterfaceC3129w1 mo385q(long j, long j2, IntFunction intFunction) {
        return AbstractC3081o1.m412o(this, j, j2, intFunction);
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
        return AbstractC2768F.m678k(this.f1033a, 0, this.f1034b, 1040);
    }

    public String toString() {
        return String.format("IntArrayNode[%d][%s]", Integer.valueOf(this.f1033a.length - this.f1034b), Arrays.toString(this.f1033a));
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2850A1 mo347b(int i) {
        mo347b(i);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    public Spliterator spliterator() {
        return AbstractC2768F.m678k(this.f1033a, 0, this.f1034b, 1040);
    }
}
