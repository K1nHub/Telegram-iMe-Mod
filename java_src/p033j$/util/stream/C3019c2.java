package p033j$.util.stream;

import java.util.Arrays;
import p033j$.util.AbstractC2777I;
import p033j$.util.InterfaceC2853s;
import p033j$.util.InterfaceC3160t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2826l;
import p033j$.util.function.InterfaceC2827m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.c2 */
/* loaded from: classes2.dex */
public class C3019c2 implements InterfaceC3138w1 {

    /* renamed from: a */
    final int[] f983a;

    /* renamed from: b */
    int f984b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3019c2(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f983a = new int[(int) j];
        this.f984b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3019c2(int[] iArr) {
        this.f983a = iArr;
        this.f984b = iArr.length;
    }

    @Override // p033j$.util.stream.InterfaceC3156z1, p033j$.util.stream.InterfaceC2859A1
    /* renamed from: b */
    public InterfaceC3156z1 mo298b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public long count() {
        return this.f984b;
    }

    @Override // p033j$.util.stream.InterfaceC3156z1
    /* renamed from: d */
    public void mo296d(Object obj, int i) {
        System.arraycopy(this.f983a, 0, (int[]) obj, i, this.f984b);
    }

    @Override // p033j$.util.stream.InterfaceC3156z1
    /* renamed from: e */
    public Object mo295e() {
        int[] iArr = this.f983a;
        int length = iArr.length;
        int i = this.f984b;
        return length == i ? iArr : Arrays.copyOf(iArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: f */
    public /* synthetic */ void mo340i(Integer[] numArr, int i) {
        AbstractC3090o1.m369i(this, numArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3090o1.m366l(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3156z1
    /* renamed from: g */
    public void mo294g(Object obj) {
        InterfaceC2826l interfaceC2826l = (InterfaceC2826l) obj;
        for (int i = 0; i < this.f984b; i++) {
            interfaceC2826l.accept(this.f983a[i]);
        }
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: j */
    public /* synthetic */ InterfaceC3138w1 mo336r(long j, long j2, InterfaceC2827m interfaceC2827m) {
        return AbstractC3090o1.m363o(this, j, j2, interfaceC2827m);
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
        return AbstractC2777I.m634k(this.f983a, 0, this.f984b, 1040);
    }

    public String toString() {
        return String.format("IntArrayNode[%d][%s]", Integer.valueOf(this.f983a.length - this.f984b), Arrays.toString(this.f983a));
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2859A1 mo298b(int i) {
        mo298b(i);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public InterfaceC2853s spliterator() {
        return AbstractC2777I.m634k(this.f983a, 0, this.f984b, 1040);
    }
}
