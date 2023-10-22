package p033j$.util.stream;

import java.util.Arrays;
import p033j$.util.AbstractC2769F;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2822l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.c2 */
/* loaded from: classes2.dex */
public class C3011c2 implements InterfaceC3130w1 {

    /* renamed from: a */
    final int[] f1033a;

    /* renamed from: b */
    int f1034b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3011c2(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f1033a = new int[(int) j];
        this.f1034b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3011c2(int[] iArr) {
        this.f1033a = iArr;
        this.f1034b = iArr.length;
    }

    @Override // p033j$.util.stream.InterfaceC3148z1, p033j$.util.stream.InterfaceC2851A1
    /* renamed from: b */
    public InterfaceC3148z1 mo343b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    public long count() {
        return this.f1034b;
    }

    @Override // p033j$.util.stream.InterfaceC3148z1
    /* renamed from: d */
    public void mo341d(Object obj, int i) {
        System.arraycopy(this.f1033a, 0, (int[]) obj, i, this.f1034b);
    }

    @Override // p033j$.util.stream.InterfaceC3148z1
    /* renamed from: e */
    public Object mo340e() {
        int[] iArr = this.f1033a;
        int length = iArr.length;
        int i = this.f1034b;
        return length == i ? iArr : Arrays.copyOf(iArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: f */
    public /* synthetic */ void mo385i(Integer[] numArr, int i) {
        AbstractC3082o1.m414i(this, numArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3082o1.m411l(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3148z1
    /* renamed from: g */
    public void mo339g(Object obj) {
        InterfaceC2822l interfaceC2822l = (InterfaceC2822l) obj;
        for (int i = 0; i < this.f1034b; i++) {
            interfaceC2822l.accept(this.f1033a[i]);
        }
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: j */
    public /* synthetic */ InterfaceC3130w1 mo381q(long j, long j2, IntFunction intFunction) {
        return AbstractC3082o1.m408o(this, j, j2, intFunction);
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
        return AbstractC2769F.m674k(this.f1033a, 0, this.f1034b, 1040);
    }

    public String toString() {
        return String.format("IntArrayNode[%d][%s]", Integer.valueOf(this.f1033a.length - this.f1034b), Arrays.toString(this.f1033a));
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2851A1 mo343b(int i) {
        mo343b(i);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    public Spliterator spliterator() {
        return AbstractC2769F.m674k(this.f1033a, 0, this.f1034b, 1040);
    }
}
