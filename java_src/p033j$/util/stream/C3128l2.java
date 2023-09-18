package p033j$.util.stream;

import java.util.Arrays;
import p033j$.util.AbstractC2832I;
import p033j$.util.InterfaceC2908s;
import p033j$.util.InterfaceC3215t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2882m;
import p033j$.util.function.InterfaceC2886q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l2 */
/* loaded from: classes2.dex */
public class C3128l2 implements InterfaceC3205y1 {

    /* renamed from: a */
    final long[] f1077a;

    /* renamed from: b */
    int f1078b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3128l2(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f1077a = new long[(int) j];
        this.f1078b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3128l2(long[] jArr) {
        this.f1077a = jArr;
        this.f1078b = jArr.length;
    }

    @Override // p033j$.util.stream.InterfaceC3211z1, p033j$.util.stream.InterfaceC2914A1
    /* renamed from: b */
    public InterfaceC3211z1 mo298b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    public long count() {
        return this.f1078b;
    }

    @Override // p033j$.util.stream.InterfaceC3211z1
    /* renamed from: d */
    public void mo296d(Object obj, int i) {
        System.arraycopy(this.f1077a, 0, (long[]) obj, i, this.f1078b);
    }

    @Override // p033j$.util.stream.InterfaceC3211z1
    /* renamed from: e */
    public Object mo295e() {
        long[] jArr = this.f1077a;
        int length = jArr.length;
        int i = this.f1078b;
        return length == i ? jArr : Arrays.copyOf(jArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3145o1.m365m(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3211z1
    /* renamed from: g */
    public void mo294g(Object obj) {
        InterfaceC2886q interfaceC2886q = (InterfaceC2886q) obj;
        for (int i = 0; i < this.f1078b; i++) {
            interfaceC2886q.accept(this.f1077a[i]);
        }
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: j */
    public /* synthetic */ void mo340i(Long[] lArr, int i) {
        AbstractC3145o1.m368j(this, lArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: k */
    public /* synthetic */ InterfaceC3205y1 mo336r(long j, long j2, InterfaceC2882m interfaceC2882m) {
        return AbstractC3145o1.m362p(this, j, j2, interfaceC2882m);
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: p */
    public /* synthetic */ int mo338p() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo337q(InterfaceC2882m interfaceC2882m) {
        return AbstractC3145o1.m371g(this, interfaceC2882m);
    }

    @Override // p033j$.util.stream.InterfaceC3211z1, p033j$.util.stream.InterfaceC2914A1
    public InterfaceC3215t spliterator() {
        return AbstractC2832I.m633l(this.f1077a, 0, this.f1078b, 1040);
    }

    public String toString() {
        return String.format("LongArrayNode[%d][%s]", Integer.valueOf(this.f1077a.length - this.f1078b), Arrays.toString(this.f1077a));
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2914A1 mo298b(int i) {
        mo298b(i);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    public InterfaceC2908s spliterator() {
        return AbstractC2832I.m633l(this.f1077a, 0, this.f1078b, 1040);
    }
}
