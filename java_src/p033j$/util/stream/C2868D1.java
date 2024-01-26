package p033j$.util.stream;

import java.util.Arrays;
import p033j$.util.AbstractC2768F;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.D1 */
/* loaded from: classes2.dex */
public class C2868D1 implements InterfaceC2850A1 {

    /* renamed from: a */
    final Object[] f849a;

    /* renamed from: b */
    int f850b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2868D1(long j, IntFunction intFunction) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f849a = (Object[]) intFunction.apply((int) j);
        this.f850b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2868D1(Object[] objArr) {
        this.f849a = objArr;
        this.f850b = objArr.length;
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: b */
    public InterfaceC2850A1 mo347b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    public long count() {
        return this.f850b;
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    public void forEach(Consumer consumer) {
        for (int i = 0; i < this.f850b; i++) {
            consumer.accept(this.f849a[i]);
        }
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: i */
    public void mo389i(Object[] objArr, int i) {
        System.arraycopy(this.f849a, 0, objArr, i, this.f850b);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: n */
    public /* synthetic */ int mo387n() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: p */
    public Object[] mo386p(IntFunction intFunction) {
        Object[] objArr = this.f849a;
        if (objArr.length == this.f850b) {
            return objArr;
        }
        throw new IllegalStateException();
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    /* renamed from: q */
    public /* synthetic */ InterfaceC2850A1 mo385q(long j, long j2, IntFunction intFunction) {
        return AbstractC3081o1.m410q(this, j, j2, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC2850A1
    public Spliterator spliterator() {
        return AbstractC2768F.m676m(this.f849a, 0, this.f850b, 1040);
    }

    public String toString() {
        return String.format("ArrayNode[%d][%s]", Integer.valueOf(this.f849a.length - this.f850b), Arrays.toString(this.f849a));
    }
}
