package p033j$.util.stream;

import java.util.Arrays;
import p033j$.util.AbstractC2832I;
import p033j$.util.InterfaceC2908s;
import p033j$.util.InterfaceC3215t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2881l;
import p033j$.util.function.InterfaceC2882m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.c2 */
/* loaded from: classes2.dex */
public class C3074c2 implements InterfaceC3193w1 {

    /* renamed from: a */
    final int[] f984a;

    /* renamed from: b */
    int f985b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3074c2(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f984a = new int[(int) j];
        this.f985b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3074c2(int[] iArr) {
        this.f984a = iArr;
        this.f985b = iArr.length;
    }

    @Override // p033j$.util.stream.InterfaceC3211z1, p033j$.util.stream.InterfaceC2914A1
    /* renamed from: b */
    public InterfaceC3211z1 mo298b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    public long count() {
        return this.f985b;
    }

    @Override // p033j$.util.stream.InterfaceC3211z1
    /* renamed from: d */
    public void mo296d(Object obj, int i) {
        System.arraycopy(this.f984a, 0, (int[]) obj, i, this.f985b);
    }

    @Override // p033j$.util.stream.InterfaceC3211z1
    /* renamed from: e */
    public Object mo295e() {
        int[] iArr = this.f984a;
        int length = iArr.length;
        int i = this.f985b;
        return length == i ? iArr : Arrays.copyOf(iArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: f */
    public /* synthetic */ void mo340i(Integer[] numArr, int i) {
        AbstractC3145o1.m369i(this, numArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3145o1.m366l(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3211z1
    /* renamed from: g */
    public void mo294g(Object obj) {
        InterfaceC2881l interfaceC2881l = (InterfaceC2881l) obj;
        for (int i = 0; i < this.f985b; i++) {
            interfaceC2881l.accept(this.f984a[i]);
        }
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: j */
    public /* synthetic */ InterfaceC3193w1 mo336r(long j, long j2, InterfaceC2882m interfaceC2882m) {
        return AbstractC3145o1.m363o(this, j, j2, interfaceC2882m);
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
        return AbstractC2832I.m634k(this.f984a, 0, this.f985b, 1040);
    }

    public String toString() {
        return String.format("IntArrayNode[%d][%s]", Integer.valueOf(this.f984a.length - this.f985b), Arrays.toString(this.f984a));
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2914A1 mo298b(int i) {
        mo298b(i);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    public InterfaceC2908s spliterator() {
        return AbstractC2832I.m634k(this.f984a, 0, this.f985b, 1040);
    }
}
