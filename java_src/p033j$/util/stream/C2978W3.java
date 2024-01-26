package p033j$.util.stream;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import p033j$.util.AbstractC2768F;
import p033j$.util.Spliterator;
import p033j$.util.function.C2820k;
import p033j$.util.function.Consumer;
import p033j$.util.function.InterfaceC2821l;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.W3 */
/* loaded from: classes2.dex */
public class C2978W3 extends AbstractC2993Z3 implements InterfaceC2821l {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C2978W3() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2978W3(int i) {
        super(i);
    }

    @Override // p033j$.util.stream.AbstractC2993Z3, java.lang.Iterable, p033j$.lang.InterfaceC2669e
    /* renamed from: A */
    public Spliterator.InterfaceC2772b spliterator() {
        return new C2973V3(this, 0, this.f1068c, 0, this.f1067b);
    }

    @Override // p033j$.util.function.InterfaceC2821l
    public void accept(int i) {
        m523z();
        int i2 = this.f1067b;
        this.f1067b = i2 + 1;
        ((int[]) this.f1003e)[i2] = i;
    }

    @Override // p033j$.util.stream.AbstractC2993Z3
    /* renamed from: c */
    public Object mo531c(int i) {
        return new int[i];
    }

    @Override // p033j$.lang.InterfaceC2669e
    public void forEach(Consumer consumer) {
        if (consumer instanceof InterfaceC2821l) {
            mo343g((InterfaceC2821l) consumer);
        } else if (AbstractC2949Q4.f963a) {
            AbstractC2949Q4.m549a(getClass(), "{0} calling SpinedBuffer.OfInt.forEach(Consumer)");
            throw null;
        } else {
            spliterator().forEachRemaining(consumer);
        }
    }

    @Override // java.lang.Iterable
    public Iterator iterator() {
        return AbstractC2768F.m682g(spliterator());
    }

    @Override // p033j$.util.function.InterfaceC2821l
    /* renamed from: k */
    public InterfaceC2821l mo238k(InterfaceC2821l interfaceC2821l) {
        Objects.requireNonNull(interfaceC2821l);
        return new C2820k(this, interfaceC2821l);
    }

    @Override // p033j$.util.stream.AbstractC2993Z3
    /* renamed from: s */
    protected void mo530s(Object obj, int i, int i2, Object obj2) {
        int[] iArr = (int[]) obj;
        InterfaceC2821l interfaceC2821l = (InterfaceC2821l) obj2;
        while (i < i2) {
            interfaceC2821l.accept(iArr[i]);
            i++;
        }
    }

    @Override // p033j$.util.stream.AbstractC2993Z3
    /* renamed from: t */
    protected int mo529t(Object obj) {
        return ((int[]) obj).length;
    }

    public String toString() {
        int[] iArr = (int[]) mo344e();
        return iArr.length < 200 ? String.format("%s[length=%d, chunks=%d]%s", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.f1068c), Arrays.toString(iArr)) : String.format("%s[length=%d, chunks=%d]%s...", getClass().getSimpleName(), Integer.valueOf(iArr.length), Integer.valueOf(this.f1068c), Arrays.toString(Arrays.copyOf(iArr, 200)));
    }

    @Override // p033j$.util.stream.AbstractC2993Z3
    /* renamed from: y */
    protected Object[] mo524y(int i) {
        return new int[i];
    }
}
