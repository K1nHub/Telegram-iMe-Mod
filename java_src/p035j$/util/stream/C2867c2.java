package p035j$.util.stream;

import java.util.Arrays;
import p035j$.util.AbstractC2625I;
import p035j$.util.InterfaceC2701s;
import p035j$.util.InterfaceC3008t;
import p035j$.util.function.Consumer;
import p035j$.util.function.InterfaceC2674l;
import p035j$.util.function.InterfaceC2675m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.c2 */
/* loaded from: classes2.dex */
public class C2867c2 implements InterfaceC2986w1 {

    /* renamed from: a */
    final int[] f900a;

    /* renamed from: b */
    int f901b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2867c2(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f900a = new int[(int) j];
        this.f901b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2867c2(int[] iArr) {
        this.f900a = iArr;
        this.f901b = iArr.length;
    }

    @Override // p035j$.util.stream.InterfaceC3004z1, p035j$.util.stream.InterfaceC2707A1
    /* renamed from: b */
    public InterfaceC3004z1 mo289b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    public long count() {
        return this.f901b;
    }

    @Override // p035j$.util.stream.InterfaceC3004z1
    /* renamed from: d */
    public void mo287d(Object obj, int i) {
        System.arraycopy(this.f900a, 0, (int[]) obj, i, this.f901b);
    }

    @Override // p035j$.util.stream.InterfaceC3004z1
    /* renamed from: e */
    public Object mo286e() {
        int[] iArr = this.f900a;
        int length = iArr.length;
        int i = this.f901b;
        return length == i ? iArr : Arrays.copyOf(iArr, i);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: f */
    public /* synthetic */ void mo331i(Integer[] numArr, int i) {
        AbstractC2938o1.m360i(this, numArr, i);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2938o1.m357l(this, consumer);
    }

    @Override // p035j$.util.stream.InterfaceC3004z1
    /* renamed from: g */
    public void mo285g(Object obj) {
        InterfaceC2674l interfaceC2674l = (InterfaceC2674l) obj;
        for (int i = 0; i < this.f901b; i++) {
            interfaceC2674l.accept(this.f900a[i]);
        }
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: j */
    public /* synthetic */ InterfaceC2986w1 mo327r(long j, long j2, InterfaceC2675m interfaceC2675m) {
        return AbstractC2938o1.m354o(this, j, j2, interfaceC2675m);
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: p */
    public /* synthetic */ int mo329p() {
        return 0;
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo328q(InterfaceC2675m interfaceC2675m) {
        return AbstractC2938o1.m362g(this, interfaceC2675m);
    }

    @Override // p035j$.util.stream.InterfaceC3004z1, p035j$.util.stream.InterfaceC2707A1
    public InterfaceC3008t spliterator() {
        return AbstractC2625I.m626k(this.f900a, 0, this.f901b, 1040);
    }

    public String toString() {
        return String.format("IntArrayNode[%d][%s]", Integer.valueOf(this.f900a.length - this.f901b), Arrays.toString(this.f900a));
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2707A1 mo289b(int i) {
        mo289b(i);
        throw null;
    }

    @Override // p035j$.util.stream.InterfaceC2707A1
    public InterfaceC2701s spliterator() {
        return AbstractC2625I.m626k(this.f900a, 0, this.f901b, 1040);
    }
}
