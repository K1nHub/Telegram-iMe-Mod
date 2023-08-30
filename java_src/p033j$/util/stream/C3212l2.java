package p033j$.util.stream;

import java.util.Arrays;
import p033j$.util.AbstractC2916I;
import p033j$.util.InterfaceC2992s;
import p033j$.util.InterfaceC3299t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2966m;
import p033j$.util.function.InterfaceC2970q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l2 */
/* loaded from: classes2.dex */
public class C3212l2 implements InterfaceC3289y1 {

    /* renamed from: a */
    final long[] f1086a;

    /* renamed from: b */
    int f1087b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3212l2(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f1086a = new long[(int) j];
        this.f1087b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3212l2(long[] jArr) {
        this.f1086a = jArr;
        this.f1087b = jArr.length;
    }

    @Override // p033j$.util.stream.InterfaceC3295z1, p033j$.util.stream.InterfaceC2998A1
    /* renamed from: b */
    public InterfaceC3295z1 mo298b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    public long count() {
        return this.f1087b;
    }

    @Override // p033j$.util.stream.InterfaceC3295z1
    /* renamed from: d */
    public void mo296d(Object obj, int i) {
        System.arraycopy(this.f1086a, 0, (long[]) obj, i, this.f1087b);
    }

    @Override // p033j$.util.stream.InterfaceC3295z1
    /* renamed from: e */
    public Object mo295e() {
        long[] jArr = this.f1086a;
        int length = jArr.length;
        int i = this.f1087b;
        return length == i ? jArr : Arrays.copyOf(jArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3229o1.m365m(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3295z1
    /* renamed from: g */
    public void mo294g(Object obj) {
        InterfaceC2970q interfaceC2970q = (InterfaceC2970q) obj;
        for (int i = 0; i < this.f1087b; i++) {
            interfaceC2970q.accept(this.f1086a[i]);
        }
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: j */
    public /* synthetic */ void mo340i(Long[] lArr, int i) {
        AbstractC3229o1.m368j(this, lArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: k */
    public /* synthetic */ InterfaceC3289y1 mo336r(long j, long j2, InterfaceC2966m interfaceC2966m) {
        return AbstractC3229o1.m362p(this, j, j2, interfaceC2966m);
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: p */
    public /* synthetic */ int mo338p() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo337q(InterfaceC2966m interfaceC2966m) {
        return AbstractC3229o1.m371g(this, interfaceC2966m);
    }

    @Override // p033j$.util.stream.InterfaceC3295z1, p033j$.util.stream.InterfaceC2998A1
    public InterfaceC3299t spliterator() {
        return AbstractC2916I.m633l(this.f1086a, 0, this.f1087b, 1040);
    }

    public String toString() {
        return String.format("LongArrayNode[%d][%s]", Integer.valueOf(this.f1086a.length - this.f1087b), Arrays.toString(this.f1086a));
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2998A1 mo298b(int i) {
        mo298b(i);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    public InterfaceC2992s spliterator() {
        return AbstractC2916I.m633l(this.f1086a, 0, this.f1087b, 1040);
    }
}
