package p033j$.util.stream;

import java.util.Arrays;
import p033j$.util.AbstractC2769F;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.D1 */
/* loaded from: classes2.dex */
public class C2869D1 implements InterfaceC2851A1 {

    /* renamed from: a */
    final Object[] f849a;

    /* renamed from: b */
    int f850b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2869D1(long j, IntFunction intFunction) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f849a = (Object[]) intFunction.apply((int) j);
        this.f850b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2869D1(Object[] objArr) {
        this.f849a = objArr;
        this.f850b = objArr.length;
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: b */
    public InterfaceC2851A1 mo343b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    public long count() {
        return this.f850b;
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    public void forEach(Consumer consumer) {
        for (int i = 0; i < this.f850b; i++) {
            consumer.accept(this.f849a[i]);
        }
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: i */
    public void mo385i(Object[] objArr, int i) {
        System.arraycopy(this.f849a, 0, objArr, i, this.f850b);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: n */
    public /* synthetic */ int mo383n() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: p */
    public Object[] mo382p(IntFunction intFunction) {
        Object[] objArr = this.f849a;
        if (objArr.length == this.f850b) {
            return objArr;
        }
        throw new IllegalStateException();
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    /* renamed from: q */
    public /* synthetic */ InterfaceC2851A1 mo381q(long j, long j2, IntFunction intFunction) {
        return AbstractC3082o1.m406q(this, j, j2, intFunction);
    }

    @Override // p033j$.util.stream.InterfaceC2851A1
    public Spliterator spliterator() {
        return AbstractC2769F.m672m(this.f849a, 0, this.f850b, 1040);
    }

    public String toString() {
        return String.format("ArrayNode[%d][%s]", Integer.valueOf(this.f849a.length - this.f850b), Arrays.toString(this.f849a));
    }
}
