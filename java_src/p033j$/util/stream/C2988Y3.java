package p033j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2768F;
import p033j$.util.Spliterator;
import p033j$.util.function.C2824o;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2825p;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.Y3 */
/* loaded from: classes2.dex */
public class C2988Y3 extends AbstractC2993Z3 implements InterfaceC2825p {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2988Y3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2988Y3(int i) {
        super(i);
    }

    @Override // p033j$.util.stream.AbstractC2993Z3, java.lang.Iterable, p033j$.lang.InterfaceC2669e
    /* renamed from: A */
    public Spliterator.InterfaceC2773c spliterator() {
        return new C2983X3(this, 0, this.f1068c, 0, this.f1067b);
    }

    @Override // p033j$.util.function.InterfaceC2825p
    public void accept(long j) {
        m523z();
        int i = this.f1067b;
        this.f1067b = i + 1;
        ((long[]) this.f1003e)[i] = j;
    }

    @Override // p033j$.util.stream.AbstractC2993Z3
    /* renamed from: c */
    public Object mo531c(int i) {
        return new long[i];
    }

    @Override // p033j$.util.function.InterfaceC2825p
    /* renamed from: f */
    public InterfaceC2825p mo216f(InterfaceC2825p interfaceC2825p) {
        Objects.requireNonNull(interfaceC2825p);
        return new C2824o(this, interfaceC2825p);
    }

    @Override // p033j$.lang.InterfaceC2669e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2825p) {
            mo343g((InterfaceC2825p) consumer);
        } else if (AbstractC2949Q4.f963a) {
            AbstractC2949Q4.m549a(getClass(), "{0} calling SpinedBuffer.OfLong.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2768F.m681h(spliterator());
    }

    @Override // p033j$.util.stream.AbstractC2993Z3
    /* renamed from: s */
    protected void mo530s(Object obj, int i, int i2, Object obj2) {
        long[] jArr = (long[]) obj;
        InterfaceC2825p interfaceC2825p = (InterfaceC2825p) obj2;
        while (i < i2) {
            interfaceC2825p.accept(jArr[i]);
            i++;
        }
    }

    @Override // p033j$.util.stream.AbstractC2993Z3
    /* renamed from: t */
    protected int mo529t(Object obj) {
        return ((long[]) obj).length;
    }

    public String toString() {
        long[] jArr = (long[]) mo344e();
        return jArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.f1068c), Arrays.toString(jArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(jArr.length), Integer.valueOf(this.f1068c), Arrays.toString(Arrays.copyOf(jArr, 200)));
    }

    @Override // p033j$.util.stream.AbstractC2993Z3
    /* renamed from: y */
    protected Object[] mo524y(int i) {
        return new long[i];
    }
}
