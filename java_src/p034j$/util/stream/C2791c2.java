package p034j$.util.stream;

import java.util.Arrays;
import p034j$.util.AbstractC2549I;
import p034j$.util.InterfaceC2625s;
import p034j$.util.InterfaceC2932t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2598l;
import p034j$.util.function.InterfaceC2599m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.c2 */
/* loaded from: classes2.dex */
public class C2791c2 implements InterfaceC2910w1 {

    /* renamed from: a */
    final int[] f895a;

    /* renamed from: b */
    int f896b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2791c2(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f895a = new int[(int) j];
        this.f896b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2791c2(int[] iArr) {
        this.f895a = iArr;
        this.f896b = iArr.length;
    }

    @Override // p034j$.util.stream.InterfaceC2928z1, p034j$.util.stream.InterfaceC2631A1
    /* renamed from: b */
    public InterfaceC2928z1 mo294b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    public long count() {
        return this.f896b;
    }

    @Override // p034j$.util.stream.InterfaceC2928z1
    /* renamed from: d */
    public void mo292d(Object obj, int i) {
        System.arraycopy(this.f895a, 0, (int[]) obj, i, this.f896b);
    }

    @Override // p034j$.util.stream.InterfaceC2928z1
    /* renamed from: e */
    public Object mo291e() {
        int[] iArr = this.f895a;
        int length = iArr.length;
        int i = this.f896b;
        return length == i ? iArr : Arrays.copyOf(iArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: f */
    public /* synthetic */ void mo336i(Integer[] numArr, int i) {
        AbstractC2862o1.m365i(this, numArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2862o1.m362l(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC2928z1
    /* renamed from: g */
    public void mo290g(Object obj) {
        InterfaceC2598l interfaceC2598l = (InterfaceC2598l) obj;
        for (int i = 0; i < this.f896b; i++) {
            interfaceC2598l.accept(this.f895a[i]);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: j */
    public /* synthetic */ InterfaceC2910w1 mo332r(long j, long j2, InterfaceC2599m interfaceC2599m) {
        return AbstractC2862o1.m359o(this, j, j2, interfaceC2599m);
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: p */
    public /* synthetic */ int mo334p() {
        return 0;
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo333q(InterfaceC2599m interfaceC2599m) {
        return AbstractC2862o1.m367g(this, interfaceC2599m);
    }

    @Override // p034j$.util.stream.InterfaceC2928z1, p034j$.util.stream.InterfaceC2631A1
    public InterfaceC2932t spliterator() {
        return AbstractC2549I.m631k(this.f895a, 0, this.f896b, 1040);
    }

    public String toString() {
        return String.format("IntArrayNode[%d][%s]", Integer.valueOf(this.f895a.length - this.f896b), Arrays.toString(this.f895a));
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2631A1 mo294b(int i) {
        mo294b(i);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2631A1
    public InterfaceC2625s spliterator() {
        return AbstractC2549I.m631k(this.f895a, 0, this.f896b, 1040);
    }
}
