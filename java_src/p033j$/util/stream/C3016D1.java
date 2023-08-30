package p033j$.util.stream;

import java.util.Arrays;
import p033j$.util.AbstractC2916I;
import p033j$.util.InterfaceC2992s;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2966m;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.D1 */
/* loaded from: classes2.dex */
public class C3016D1 implements InterfaceC2998A1 {

    /* renamed from: a */
    final Object[] f809a;

    /* renamed from: b */
    int f810b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3016D1(long j, InterfaceC2966m interfaceC2966m) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f809a = (Object[]) interfaceC2966m.apply((int) j);
        this.f810b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3016D1(Object[] objArr) {
        this.f809a = objArr;
        this.f810b = objArr.length;
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: b */
    public InterfaceC2998A1 mo298b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    public long count() {
        return this.f810b;
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    public void forEach(Consumer consumer) {
        for (int i = 0; i < this.f810b; i++) {
            consumer.accept(this.f809a[i]);
        }
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: i */
    public void mo340i(Object[] objArr, int i) {
        System.arraycopy(this.f809a, 0, objArr, i, this.f810b);
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: p */
    public /* synthetic */ int mo338p() {
        return 0;
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: q */
    public Object[] mo337q(InterfaceC2966m interfaceC2966m) {
        Object[] objArr = this.f809a;
        if (objArr.length == this.f810b) {
            return objArr;
        }
        throw new IllegalStateException();
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    /* renamed from: r */
    public /* synthetic */ InterfaceC2998A1 mo336r(long j, long j2, InterfaceC2966m interfaceC2966m) {
        return AbstractC3229o1.m361q(this, j, j2, interfaceC2966m);
    }

    @Override // p033j$.util.stream.InterfaceC2998A1
    public InterfaceC2992s spliterator() {
        return AbstractC2916I.m632m(this.f809a, 0, this.f810b, 1040);
    }

    public String toString() {
        return String.format("ArrayNode[%d][%s]", Integer.valueOf(this.f809a.length - this.f810b), Arrays.toString(this.f809a));
    }
}
