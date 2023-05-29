package p034j$.util.stream;

import java.util.Arrays;
import p034j$.util.AbstractC2656I;
import p034j$.util.InterfaceC2732s;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2706m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.D1 */
/* loaded from: classes2.dex */
public class C2756D1 implements InterfaceC2738A1 {

    /* renamed from: a */
    final Object[] f714a;

    /* renamed from: b */
    int f715b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2756D1(long j, InterfaceC2706m interfaceC2706m) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f714a = (Object[]) interfaceC2706m.apply((int) j);
        this.f715b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2756D1(Object[] objArr) {
        this.f714a = objArr;
        this.f715b = objArr.length;
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: b */
    public InterfaceC2738A1 mo280b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    public long count() {
        return this.f715b;
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    public void forEach(Consumer consumer) {
        for (int i = 0; i < this.f715b; i++) {
            consumer.accept(this.f714a[i]);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: i */
    public void mo322i(Object[] objArr, int i) {
        System.arraycopy(this.f714a, 0, objArr, i, this.f715b);
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: p */
    public /* synthetic */ int mo320p() {
        return 0;
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: q */
    public Object[] mo319q(InterfaceC2706m interfaceC2706m) {
        Object[] objArr = this.f714a;
        if (objArr.length == this.f715b) {
            return objArr;
        }
        throw new IllegalStateException();
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    /* renamed from: r */
    public /* synthetic */ InterfaceC2738A1 mo318r(long j, long j2, InterfaceC2706m interfaceC2706m) {
        return AbstractC2969o1.m343q(this, j, j2, interfaceC2706m);
    }

    @Override // p034j$.util.stream.InterfaceC2738A1
    public InterfaceC2732s spliterator() {
        return AbstractC2656I.m614m(this.f714a, 0, this.f715b, 1040);
    }

    public String toString() {
        return String.format("ArrayNode[%d][%s]", Integer.valueOf(this.f714a.length - this.f715b), Arrays.toString(this.f714a));
    }
}
