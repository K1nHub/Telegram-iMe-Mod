package p033j$.util.stream;

import java.util.Arrays;
import p033j$.util.AbstractC2777I;
import p033j$.util.InterfaceC2853s;
import p033j$.util.InterfaceC3160t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2827m;
import p033j$.util.function.InterfaceC2831q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l2 */
/* loaded from: classes2.dex */
public class C3073l2 implements InterfaceC3150y1 {

    /* renamed from: a */
    final long[] f1076a;

    /* renamed from: b */
    int f1077b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3073l2(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f1076a = new long[(int) j];
        this.f1077b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3073l2(long[] jArr) {
        this.f1076a = jArr;
        this.f1077b = jArr.length;
    }

    @Override // p033j$.util.stream.InterfaceC3156z1, p033j$.util.stream.InterfaceC2859A1
    /* renamed from: b */
    public InterfaceC3156z1 mo298b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public long count() {
        return this.f1077b;
    }

    @Override // p033j$.util.stream.InterfaceC3156z1
    /* renamed from: d */
    public void mo296d(Object obj, int i) {
        System.arraycopy(this.f1076a, 0, (long[]) obj, i, this.f1077b);
    }

    @Override // p033j$.util.stream.InterfaceC3156z1
    /* renamed from: e */
    public Object mo295e() {
        long[] jArr = this.f1076a;
        int length = jArr.length;
        int i = this.f1077b;
        return length == i ? jArr : Arrays.copyOf(jArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3090o1.m365m(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3156z1
    /* renamed from: g */
    public void mo294g(Object obj) {
        InterfaceC2831q interfaceC2831q = (InterfaceC2831q) obj;
        for (int i = 0; i < this.f1077b; i++) {
            interfaceC2831q.accept(this.f1076a[i]);
        }
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: j */
    public /* synthetic */ void mo340i(Long[] lArr, int i) {
        AbstractC3090o1.m368j(this, lArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: k */
    public /* synthetic */ InterfaceC3150y1 mo336r(long j, long j2, InterfaceC2827m interfaceC2827m) {
        return AbstractC3090o1.m362p(this, j, j2, interfaceC2827m);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: p */
    public /* synthetic */ int mo338p() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo337q(InterfaceC2827m interfaceC2827m) {
        return AbstractC3090o1.m371g(this, interfaceC2827m);
    }

    @Override // p033j$.util.stream.InterfaceC3156z1, p033j$.util.stream.InterfaceC2859A1
    public InterfaceC3160t spliterator() {
        return AbstractC2777I.m633l(this.f1076a, 0, this.f1077b, 1040);
    }

    public String toString() {
        return String.format("LongArrayNode[%d][%s]", Integer.valueOf(this.f1076a.length - this.f1077b), Arrays.toString(this.f1076a));
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2859A1 mo298b(int i) {
        mo298b(i);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public InterfaceC2853s spliterator() {
        return AbstractC2777I.m633l(this.f1076a, 0, this.f1077b, 1040);
    }
}
