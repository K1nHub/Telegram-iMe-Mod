package p034j$.util.stream;

import java.util.Arrays;
import p034j$.util.AbstractC2535I;
import p034j$.util.InterfaceC2611s;
import p034j$.util.InterfaceC2918t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2585m;
import p034j$.util.function.InterfaceC2589q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l2 */
/* loaded from: classes2.dex */
public class C2831l2 implements InterfaceC2908y1 {

    /* renamed from: a */
    final long[] f987a;

    /* renamed from: b */
    int f988b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2831l2(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f987a = new long[(int) j];
        this.f988b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2831l2(long[] jArr) {
        this.f987a = jArr;
        this.f988b = jArr.length;
    }

    @Override // p034j$.util.stream.InterfaceC2914z1, p034j$.util.stream.InterfaceC2617A1
    /* renamed from: b */
    public InterfaceC2914z1 mo295b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    public long count() {
        return this.f988b;
    }

    @Override // p034j$.util.stream.InterfaceC2914z1
    /* renamed from: d */
    public void mo293d(Object obj, int i) {
        System.arraycopy(this.f987a, 0, (long[]) obj, i, this.f988b);
    }

    @Override // p034j$.util.stream.InterfaceC2914z1
    /* renamed from: e */
    public Object mo292e() {
        long[] jArr = this.f987a;
        int length = jArr.length;
        int i = this.f988b;
        return length == i ? jArr : Arrays.copyOf(jArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2848o1.m362m(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2914z1
    /* renamed from: g */
    public void mo291g(Object obj) {
        InterfaceC2589q interfaceC2589q = (InterfaceC2589q) obj;
        for (int i = 0; i < this.f988b; i++) {
            interfaceC2589q.accept(this.f987a[i]);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: j */
    public /* synthetic */ void mo337i(Long[] lArr, int i) {
        AbstractC2848o1.m365j(this, lArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: k */
    public /* synthetic */ InterfaceC2908y1 mo333r(long j, long j2, InterfaceC2585m interfaceC2585m) {
        return AbstractC2848o1.m359p(this, j, j2, interfaceC2585m);
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: p */
    public /* synthetic */ int mo335p() {
        return 0;
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo334q(InterfaceC2585m interfaceC2585m) {
        return AbstractC2848o1.m368g(this, interfaceC2585m);
    }

    @Override // p034j$.util.stream.InterfaceC2914z1, p034j$.util.stream.InterfaceC2617A1
    public InterfaceC2918t spliterator() {
        return AbstractC2535I.m631l(this.f987a, 0, this.f988b, 1040);
    }

    public String toString() {
        return String.format("LongArrayNode[%d][%s]", Integer.valueOf(this.f987a.length - this.f988b), Arrays.toString(this.f987a));
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2617A1 mo295b(int i) {
        mo295b(i);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2617A1
    public InterfaceC2611s spliterator() {
        return AbstractC2535I.m631l(this.f987a, 0, this.f988b, 1040);
    }
}
