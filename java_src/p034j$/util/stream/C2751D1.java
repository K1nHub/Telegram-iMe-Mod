package p034j$.util.stream;

import java.util.Arrays;
import p034j$.util.AbstractC2651I;
import p034j$.util.InterfaceC2727s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2701m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.D1 */
/* loaded from: classes2.dex */
public class C2751D1 implements InterfaceC2733A1 {

    /* renamed from: a */
    final Object[] f714a;

    /* renamed from: b */
    int f715b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2751D1(long j, InterfaceC2701m interfaceC2701m) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f714a = (Object[]) interfaceC2701m.apply((int) j);
        this.f715b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2751D1(Object[] objArr) {
        this.f714a = objArr;
        this.f715b = objArr.length;
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    /* renamed from: b */
    public InterfaceC2733A1 mo280b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    public long count() {
        return this.f715b;
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    public void forEach(Consumer consumer) {
        for (int i = 0; i < this.f715b; i++) {
            consumer.accept(this.f714a[i]);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    /* renamed from: i */
    public void mo322i(Object[] objArr, int i) {
        System.arraycopy(this.f714a, 0, objArr, i, this.f715b);
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    /* renamed from: p */
    public /* synthetic */ int mo320p() {
        return 0;
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    /* renamed from: q */
    public Object[] mo319q(InterfaceC2701m interfaceC2701m) {
        Object[] objArr = this.f714a;
        if (objArr.length == this.f715b) {
            return objArr;
        }
        throw new IllegalStateException();
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    /* renamed from: r */
    public /* synthetic */ InterfaceC2733A1 mo318r(long j, long j2, InterfaceC2701m interfaceC2701m) {
        return AbstractC2964o1.m343q(this, j, j2, interfaceC2701m);
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    public InterfaceC2727s spliterator() {
        return AbstractC2651I.m614m(this.f714a, 0, this.f715b, 1040);
    }

    public String toString() {
        return String.format("ArrayNode[%d][%s]", Integer.valueOf(this.f714a.length - this.f715b), Arrays.toString(this.f714a));
    }
}
