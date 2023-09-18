package p033j$.util.stream;

import java.util.Arrays;
import p033j$.util.AbstractC2832I;
import p033j$.util.InterfaceC2908s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2882m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.D1 */
/* loaded from: classes2.dex */
public class C2932D1 implements InterfaceC2914A1 {

    /* renamed from: a */
    final Object[] f800a;

    /* renamed from: b */
    int f801b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2932D1(long j, InterfaceC2882m interfaceC2882m) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f800a = (Object[]) interfaceC2882m.apply((int) j);
        this.f801b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2932D1(Object[] objArr) {
        this.f800a = objArr;
        this.f801b = objArr.length;
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: b */
    public InterfaceC2914A1 mo298b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    public long count() {
        return this.f801b;
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    public void forEach(Consumer consumer) {
        for (int i = 0; i < this.f801b; i++) {
            consumer.accept(this.f800a[i]);
        }
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: i */
    public void mo340i(Object[] objArr, int i) {
        System.arraycopy(this.f800a, 0, objArr, i, this.f801b);
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: p */
    public /* synthetic */ int mo338p() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: q */
    public Object[] mo337q(InterfaceC2882m interfaceC2882m) {
        Object[] objArr = this.f800a;
        if (objArr.length == this.f801b) {
            return objArr;
        }
        throw new IllegalStateException();
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    /* renamed from: r */
    public /* synthetic */ InterfaceC2914A1 mo336r(long j, long j2, InterfaceC2882m interfaceC2882m) {
        return AbstractC3145o1.m361q(this, j, j2, interfaceC2882m);
    }

    @Override // p033j$.util.stream.InterfaceC2914A1
    public InterfaceC2908s spliterator() {
        return AbstractC2832I.m632m(this.f800a, 0, this.f801b, 1040);
    }

    public String toString() {
        return String.format("ArrayNode[%d][%s]", Integer.valueOf(this.f800a.length - this.f801b), Arrays.toString(this.f800a));
    }
}
