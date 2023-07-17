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
    final Object[] f796a;

    /* renamed from: b */
    int f797b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2877D1(long j, InterfaceC2827m interfaceC2827m) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f796a = (Object[]) interfaceC2827m.apply((int) j);
        this.f797b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2877D1(Object[] objArr) {
        this.f796a = objArr;
        this.f797b = objArr.length;
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: b */
    public InterfaceC2859A1 mo280b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public long count() {
        return this.f797b;
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public void forEach(Consumer consumer) {
        for (int i = 0; i < this.f797b; i++) {
            consumer.accept(this.f796a[i]);
        }
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: i */
    public void mo322i(Object[] objArr, int i) {
        System.arraycopy(this.f796a, 0, objArr, i, this.f797b);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: p */
    public /* synthetic */ int mo320p() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: q */
    public Object[] mo319q(InterfaceC2827m interfaceC2827m) {
        Object[] objArr = this.f796a;
        if (objArr.length == this.f797b) {
            return objArr;
        }
        throw new IllegalStateException();
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    /* renamed from: r */
    public /* synthetic */ InterfaceC2859A1 mo318r(long j, long j2, InterfaceC2827m interfaceC2827m) {
        return AbstractC3090o1.m343q(this, j, j2, interfaceC2827m);
    }

    @Override // p033j$.util.stream.InterfaceC2859A1
    public InterfaceC2853s spliterator() {
        return AbstractC2777I.m614m(this.f796a, 0, this.f797b, 1040);
    }

    public String toString() {
        return String.format("ArrayNode[%d][%s]", Integer.valueOf(this.f796a.length - this.f797b), Arrays.toString(this.f796a));
    }
}
