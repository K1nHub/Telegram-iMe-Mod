package p033j$.util.stream;

import java.util.Arrays;
import p033j$.util.AbstractC2773F;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.D1 */
/* loaded from: classes2.dex */
public class C2873D1 implements InterfaceC2855A1 {

    /* renamed from: a */
    final Object[] f849a;

    /* renamed from: b */
    int f850b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2873D1(long j, IntFunction intFunction) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f849a = (Object[]) intFunction.apply((int) j);
        this.f850b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2873D1(Object[] objArr) {
        this.f849a = objArr;
        this.f850b = objArr.length;
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    /* renamed from: b */
    public InterfaceC2855A1 mo344b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    public long count() {
        return this.f850b;
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    public void forEach(Consumer consumer) {
        for (int i = 0; i < this.f850b; i++) {
            consumer.accept(this.f849a[i]);
        }
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    /* renamed from: i */
    public void mo386i(Object[] objArr, int i) {
        System.arraycopy(this.f849a, 0, objArr, i, this.f850b);
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    /* renamed from: n */
    public /* synthetic */ int mo384n() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    /* renamed from: p */
    public Object[] mo383p(IntFunction intFunction) {
        Object[] objArr = this.f849a;
        if (objArr.length == this.f850b) {
            return objArr;
        }
        throw new IllegalStateException();
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    /* renamed from: q */
    public /* synthetic */ InterfaceC2855A1 mo382q(long j, long j2, IntFunction intFunction) {
        return AbstractC3086o1.m407q(this, j, j2, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    public Spliterator spliterator() {
        return AbstractC2773F.m673m(this.f849a, 0, this.f850b, 1040);
    }

    public String toString() {
        return String.format("ArrayNode[%d][%s]", Integer.valueOf(this.f849a.length - this.f850b), Arrays.toString(this.f849a));
    }
}
