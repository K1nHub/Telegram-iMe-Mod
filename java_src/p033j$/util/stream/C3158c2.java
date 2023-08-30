package p033j$.util.stream;

import java.util.Arrays;
import p033j$.util.AbstractC2916I;
import p033j$.util.InterfaceC2992s;
import p033j$.util.InterfaceC3299t;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2965l;
import p033j$.util.function.InterfaceC2966m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.c2 */
/* loaded from: classes2.dex */
public class C3158c2 implements InterfaceC3277w1 {

    /* renamed from: a */
    final int[] f993a;

    /* renamed from: b */
    int f994b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3158c2(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f993a = new int[(int) j];
        this.f994b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3158c2(int[] iArr) {
        this.f993a = iArr;
        this.f994b = iArr.length;
    }

    @Override // p033j$.util.stream.InterfaceC3295z1, p033j$.util.stream.InterfaceC2998A1
    /* renamed from: b */
    public InterfaceC3295z1 mo298b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    public long count() {
        return this.f994b;
    }

    @Override // p033j$.util.stream.InterfaceC3295z1
    /* renamed from: d */
    public void mo296d(Object obj, int i) {
        System.arraycopy(this.f993a, 0, (int[]) obj, i, this.f994b);
    }

    @Override // p033j$.util.stream.InterfaceC3295z1
    /* renamed from: e */
    public Object mo295e() {
        int[] iArr = this.f993a;
        int length = iArr.length;
        int i = this.f994b;
        return length == i ? iArr : Arrays.copyOf(iArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: f */
    public /* synthetic */ void mo340i(Integer[] numArr, int i) {
        AbstractC3229o1.m369i(this, numArr, i);
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC3229o1.m366l(this, consumer);
    }

    @Override // p033j$.util.stream.InterfaceC3295z1
    /* renamed from: g */
    public void mo294g(Object obj) {
        InterfaceC2965l interfaceC2965l = (InterfaceC2965l) obj;
        for (int i = 0; i < this.f994b; i++) {
            interfaceC2965l.accept(this.f993a[i]);
        }
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: j */
    public /* synthetic */ InterfaceC3277w1 mo336r(long j, long j2, InterfaceC2966m interfaceC2966m) {
        return AbstractC3229o1.m363o(this, j, j2, interfaceC2966m);
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
        return AbstractC2916I.m634k(this.f993a, 0, this.f994b, 1040);
    }

    public String toString() {
        return String.format("IntArrayNode[%d][%s]", Integer.valueOf(this.f993a.length - this.f994b), Arrays.toString(this.f993a));
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2998A1 mo298b(int i) {
        mo298b(i);
        throw null;
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    public InterfaceC2992s spliterator() {
        return AbstractC2916I.m634k(this.f993a, 0, this.f994b, 1040);
    }
}
