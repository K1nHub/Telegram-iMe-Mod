package p034j$.util.stream;

import java.util.Arrays;
import p034j$.util.AbstractC2612I;
import p034j$.util.InterfaceC2688s;
import p034j$.util.InterfaceC2995t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2661l;
import p034j$.util.function.InterfaceC2662m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.c2 */
/* loaded from: classes2.dex */
public class C2854c2 implements InterfaceC2973w1 {

    /* renamed from: a */
    final int[] f895a;

    /* renamed from: b */
    int f896b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2854c2(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f895a = new int[(int) j];
        this.f896b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2854c2(int[] iArr) {
        this.f895a = iArr;
        this.f896b = iArr.length;
    }

    @Override // p034j$.util.stream.InterfaceC2991z1, p034j$.util.stream.InterfaceC2694A1
    /* renamed from: b */
    public InterfaceC2991z1 mo275b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    public long count() {
        return this.f896b;
    }

    @Override // p034j$.util.stream.InterfaceC2991z1
    /* renamed from: d */
    public void mo273d(Object obj, int i) {
        System.arraycopy(this.f895a, 0, (int[]) obj, i, this.f896b);
    }

    @Override // p034j$.util.stream.InterfaceC2991z1
    /* renamed from: e */
    public Object mo272e() {
        int[] iArr = this.f895a;
        int length = iArr.length;
        int i = this.f896b;
        return length == i ? iArr : Arrays.copyOf(iArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: f */
    public /* synthetic */ void mo317i(Integer[] numArr, int i) {
        AbstractC2925o1.m346i(this, numArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2925o1.m343l(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2991z1
    /* renamed from: g */
    public void mo271g(Object obj) {
        InterfaceC2661l interfaceC2661l = (InterfaceC2661l) obj;
        for (int i = 0; i < this.f896b; i++) {
            interfaceC2661l.accept(this.f895a[i]);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: j */
    public /* synthetic */ InterfaceC2973w1 mo313r(long j, long j2, InterfaceC2662m interfaceC2662m) {
        return AbstractC2925o1.m340o(this, j, j2, interfaceC2662m);
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: p */
    public /* synthetic */ int mo315p() {
        return 0;
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo314q(InterfaceC2662m interfaceC2662m) {
        return AbstractC2925o1.m348g(this, interfaceC2662m);
    }

    @Override // p034j$.util.stream.InterfaceC2991z1, p034j$.util.stream.InterfaceC2694A1
    public InterfaceC2995t spliterator() {
        return AbstractC2612I.m612k(this.f895a, 0, this.f896b, 1040);
    }

    public String toString() {
        return String.format("IntArrayNode[%d][%s]", Integer.valueOf(this.f895a.length - this.f896b), Arrays.toString(this.f895a));
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2694A1 mo275b(int i) {
        mo275b(i);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2694A1
    public InterfaceC2688s spliterator() {
        return AbstractC2612I.m612k(this.f895a, 0, this.f896b, 1040);
    }
}
