package p033j$.util.stream;

import java.util.Arrays;
import p033j$.util.AbstractC2773F;
import p033j$.util.Spliterator;
import p033j$.util.function.Consumer;
import p033j$.util.function.IntFunction;
import p033j$.util.function.InterfaceC2820f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.T1 */
/* loaded from: classes2.dex */
public class C2966T1 implements InterfaceC3122u1 {

    /* renamed from: a */
    final double[] f978a;

    /* renamed from: b */
    int f979b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2966T1(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f978a = new double[(int) j];
        this.f979b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2966T1(double[] dArr) {
        this.f978a = dArr;
        this.f979b = dArr.length;
    }

    @Override // p033j$.util.stream.InterfaceC3152z1, p033j$.util.stream.InterfaceC2855A1
    /* renamed from: b */
    public InterfaceC3152z1 mo344b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    public long count() {
        return this.f979b;
    }

    @Override // p033j$.util.stream.InterfaceC3152z1
    /* renamed from: d */
    public void mo342d(Object obj, int i) {
        System.arraycopy(this.f978a, 0, (double[]) obj, i, this.f979b);
    }

    @Override // p033j$.util.stream.InterfaceC3152z1
    /* renamed from: e */
    public Object mo341e() {
        double[] dArr = this.f978a;
        int length = dArr.length;
        int i = this.f979b;
        return length == i ? dArr : Arrays.copyOf(dArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    /* renamed from: f */
    public /* synthetic */ void mo386i(Double[] dArr, int i) {
        AbstractC3086o1.m416h(this, dArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3086o1.m413k(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3152z1
    /* renamed from: g */
    public void mo340g(Object obj) {
        InterfaceC2820f interfaceC2820f = (InterfaceC2820f) obj;
        for (int i = 0; i < this.f979b; i++) {
            interfaceC2820f.accept(this.f978a[i]);
        }
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    /* renamed from: k */
    public /* synthetic */ InterfaceC3122u1 mo382q(long j, long j2, IntFunction intFunction) {
        return AbstractC3086o1.m410n(this, j, j2, intFunction);
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
        return AbstractC2773F.m676j(this.f978a, 0, this.f979b, 1040);
    }

    public String toString() {
        return String.format("DoubleArrayNode[%d][%s]", Integer.valueOf(this.f978a.length - this.f979b), Arrays.toString(this.f978a));
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2855A1 mo344b(int i) {
        mo344b(i);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC2855A1
    public Spliterator spliterator() {
        return AbstractC2773F.m676j(this.f978a, 0, this.f979b, 1040);
    }
}
