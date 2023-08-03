package p033j$.util.stream;

import java.util.Arrays;
import p033j$.util.AbstractC2777I;
import p033j$.util.InterfaceC2853s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2827m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.D1 */
/* loaded from: classes2.dex */
public class C2877D1 implements InterfaceC2859A1 {

    /* renamed from: a */
    final Object[] f799a;

    /* renamed from: b */
    int f800b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2877D1(long j, InterfaceC2827m interfaceC2827m) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f799a = (Object[]) interfaceC2827m.apply((int) j);
        this.f800b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2877D1(Object[] objArr) {
        this.f799a = objArr;
        this.f800b = objArr.length;
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: b */
    public InterfaceC2859A1 mo298b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public long count() {
        return this.f800b;
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public void forEach(Consumer consumer) {
        for (int i = 0; i < this.f800b; i++) {
            consumer.accept(this.f799a[i]);
        }
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: i */
    public void mo340i(Object[] objArr, int i) {
        System.arraycopy(this.f799a, 0, objArr, i, this.f800b);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: p */
    public /* synthetic */ int mo338p() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: q */
    public Object[] mo337q(InterfaceC2827m interfaceC2827m) {
        Object[] objArr = this.f799a;
        if (objArr.length == this.f800b) {
            return objArr;
        }
        throw new IllegalStateException();
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: r */
    public /* synthetic */ InterfaceC2859A1 mo336r(long j, long j2, InterfaceC2827m interfaceC2827m) {
        return AbstractC3090o1.m361q(this, j, j2, interfaceC2827m);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public InterfaceC2853s spliterator() {
        return AbstractC2777I.m632m(this.f799a, 0, this.f800b, 1040);
    }

    public String toString() {
        return String.format("ArrayNode[%d][%s]", Integer.valueOf(this.f799a.length - this.f800b), Arrays.toString(this.f799a));
    }
}
